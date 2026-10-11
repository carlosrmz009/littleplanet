#include "app.h"
#include <math.h>
#ifdef _WIN32
#include <GL/gl.h>
#pragma comment(lib, "opengl32.lib")

typedef char GLchar;
#define GL_FRAGMENT_SHADER 0x8B30
#define GL_VERTEX_SHADER 0x8B31
#define GL_COMPILE_STATUS 0x8B81
#define GL_LINK_STATUS 0x8B82
#define GL_CLAMP_TO_EDGE 0x812F
#define GL_BGRA 0x80E1
#define GL_TEXTURE0 0x84C0
#define GL_GENERATE_MIPMAP 0x8191
#define F(ret, name, args) typedef ret (APIENTRY *PFN_##name) args; static PFN_##name name;
F(GLuint, glCreateShader, (GLenum))
F(void, glShaderSource, (GLuint, GLsizei, const GLchar **, const GLint *))
F(void, glCompileShader, (GLuint))
F(void, glGetShaderiv, (GLuint, GLenum, GLint *))
F(void, glGetShaderInfoLog, (GLuint, GLsizei, GLsizei *, GLchar *))
F(GLuint, glCreateProgram, (void))
F(void, glAttachShader, (GLuint, GLuint))
F(void, glLinkProgram, (GLuint))
F(void, glGetProgramiv, (GLuint, GLenum, GLint *))
F(void, glUseProgram, (GLuint))
F(GLint, glGetUniformLocation, (GLuint, const GLchar *))
F(void, glUniform1i, (GLint, GLint))
F(void, glUniform1f, (GLint, GLfloat))
F(void, glUniform2f, (GLint, GLfloat, GLfloat))
F(void, glUniform4f, (GLint, GLfloat, GLfloat, GLfloat, GLfloat))
F(void, glGenerateMipmap, (GLenum))
typedef BOOL (WINAPI *PFN_wglSwapIntervalEXT)(int);
static PFN_wglSwapIntervalEXT wglSwapIntervalEXT_;
#undef F
static HDC dc; static HGLRC glrc;
#elif defined(__APPLE__)
#include <OpenGL/gl.h>
#else
#define GL_GLEXT_PROTOTYPES
#include <GL/gl.h>
#endif

static int win_w = 1, win_h = 1;
static GLuint tex_game, tex_ui, prog_sharp, prog_crt, prog_ambient;
static int game_w = 320, game_h = 224;
static bool have_shaders;
static int cur_vsync = -1;

static const char *VS =
  "#version 120\n"
  "void main() { gl_TexCoord[0] = gl_MultiTexCoord0; gl_Position = gl_Vertex; }\n";

static const char *FS_SHARP =
  "#version 120\n"
  "uniform sampler2D tex; uniform vec2 texsize; uniform vec2 scale; uniform int nearest;\n"
  "void main() {\n"
  "  vec2 uv = gl_TexCoord[0].xy;\n"
  "  if (nearest == 1) { gl_FragColor = texture2D(tex, (floor(uv * texsize) + 0.5) / texsize); return; }\n"
  "  vec2 texel = uv * texsize; vec2 fl = floor(texel); vec2 s = fract(texel);\n"
  "  vec2 region = 0.5 - 0.5 / scale; vec2 d = s - 0.5;\n"
  "  vec2 f = (d - clamp(d, -region, region)) * scale + 0.5;\n"
  "  gl_FragColor = texture2D(tex, (fl + f) / texsize);\n"
  "}\n";

static const char *FS_CRT =
  "#version 120\n"
  "uniform sampler2D tex; uniform vec2 texsize; uniform float lines; uniform vec2 outsize; uniform vec2 outorg;\n"
  "uniform int masktype; uniform float scan; uniform float glow; uniform float curv; uniform vec4 crop;\n"
  "vec3 lin(vec3 c) { return pow(c, vec3(2.4)); }\n"
  "vec2 warp(vec2 p) { p = p * 2.0 - 1.0; p *= vec2(1.0 + p.y * p.y * 0.031 * curv, 1.0 + p.x * p.x * 0.041 * curv); return p * 0.5 + 0.5; }\n"
  "vec3 hline(float x, float row) {\n"
  "  float y = (row + 0.5) / lines; float px = texsize.y / 224.0; vec3 c = vec3(0.0); float ws = 0.0;\n"
  "  for (int i = -3; i <= 3; i++) { float o = float(i) * 0.5; float w = exp(-o * o * 2.2);\n"
  "    vec2 uv = vec2(x + o * px / texsize.x, y); uv = crop.xy + uv * (crop.zw - crop.xy);\n"
  "    c += lin(texture2D(tex, uv).rgb) * w; ws += w; }\n"
  "  return c / ws;\n"
  "}\n"
  "float beam(float d, vec3 c) { float l = max(max(c.r, c.g), c.b); float wd = mix(0.28, 0.48, sqrt(l)); return exp(-0.5 * d * d / (wd * wd)); }\n"
  "vec3 mask(vec2 p) {\n"
  "  vec3 m = vec3(0.25);\n"
  "  if (masktype == 0) { int i = int(mod(p.x, 3.0)); if (i == 0) m.r = 1.0; else if (i == 1) m.g = 1.0; else m.b = 1.0; }\n"
  "  else if (masktype == 1) { float x = p.x + mod(floor(p.y), 2.0) * 1.5; int i = int(mod(x, 3.0)); if (i == 0) m.r = 1.0; else if (i == 1) m.g = 1.0; else m.b = 1.0; }\n"
  "  else { float x = p.x; float y = p.y + floor(x / 3.0) * 2.0; int i = int(mod(x, 3.0)); if (mod(y, 4.0) >= 3.0) return vec3(0.25);"
  " if (i == 0) m.r = 1.0; else if (i == 1) m.g = 1.0; else m.b = 1.0; }\n"
  "  return m;\n"
  "}\n"
  "void main() {\n"
  "  vec2 uv = gl_TexCoord[0].xy;\n"
  "  if (curv > 0.0) { uv = warp(uv); if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) { gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0); return; } }\n"
  "  float ly = uv.y * lines - 0.5; float r0 = floor(ly); float f = ly - r0;\n"
  "  vec3 c0 = hline(uv.x, clamp(r0, 0.0, lines - 1.0)), c1 = hline(uv.x, clamp(r0 + 1.0, 0.0, lines - 1.0));\n"
  "  vec3 beamc = c0 * beam(f, c0) + c1 * beam(1.0 - f, c1);\n"
  "  vec3 flt = mix(c0, c1, f);\n"
  "  vec3 col = mix(flt, beamc * 1.3, scan);\n"
  "  vec2 guv = crop.xy + uv * (crop.zw - crop.xy);\n"
  "  vec3 halo = lin(texture2D(tex, guv, 3.0).rgb) * 0.5 + lin(texture2D(tex, guv, 4.5).rgb) * 0.5;\n"
  "  col += halo * glow * 0.35;\n"
  "  vec2 pix = gl_FragCoord.xy - outorg;\n"
  "  float ms = outsize.y / lines;\n"
  "  col *= mix(vec3(1.0), mask(pix) * 1.9, clamp((ms - 2.0) / 2.0, 0.0, 1.0) * 0.55);\n"
  "  if (curv > 0.0) { vec2 v = uv * (1.0 - uv); col *= clamp(pow(v.x * v.y * 40.0, 0.25), 0.0, 1.0); }\n"
  "  gl_FragColor = vec4(pow(clamp(col, 0.0, 1.0), vec3(1.0 / 2.2)), 1.0);\n"
  "}\n";

static const char *FS_AMBIENT =
  "#version 120\n"
  "uniform sampler2D tex;\n"
  "void main() { vec3 c = texture2D(tex, gl_TexCoord[0].xy, 6.0).rgb * 0.45; gl_FragColor = vec4(c, 1.0); }\n";

static GLuint compile(const char *fs) {
  GLuint v = glCreateShader(GL_VERTEX_SHADER), f = glCreateShader(GL_FRAGMENT_SHADER);
  glShaderSource(v, 1, &VS, NULL); glCompileShader(v);
  glShaderSource(f, 1, &fs, NULL); glCompileShader(f);
  GLint ok; glGetShaderiv(f, GL_COMPILE_STATUS, &ok);
  if (!ok) { char log[2048]; glGetShaderInfoLog(f, sizeof log, NULL, log); fprintf(stderr, "shader: %s\n", log); return 0; }
  GLuint p = glCreateProgram(); glAttachShader(p, v); glAttachShader(p, f); glLinkProgram(p);
  glGetProgramiv(p, GL_LINK_STATUS, &ok);
  return ok ? p : 0;
}

static void video_setup(void) {
  if (have_shaders) {
    prog_sharp = compile(FS_SHARP); prog_crt = compile(FS_CRT); prog_ambient = compile(FS_AMBIENT);
    have_shaders = prog_sharp && prog_crt;
  }
  glGenTextures(1, &tex_game); glGenTextures(1, &tex_ui);
  glEnable(GL_TEXTURE_2D);
}

#ifdef _WIN32
bool video_init(HWND w) {
  dc = GetDC(w);
  PIXELFORMATDESCRIPTOR pfd = { sizeof pfd, 1, PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER, PFD_TYPE_RGBA, 32 };
  pfd.cDepthBits = 0; pfd.iLayerType = PFD_MAIN_PLANE;
  int pf = ChoosePixelFormat(dc, &pfd);
  if (!pf || !SetPixelFormat(dc, pf, &pfd)) return false;
  glrc = wglCreateContext(dc);
  if (!glrc || !wglMakeCurrent(dc, glrc)) return false;
#define L(name) name = (PFN_##name)wglGetProcAddress(#name)
  L(glCreateShader); L(glShaderSource); L(glCompileShader); L(glGetShaderiv); L(glGetShaderInfoLog); L(glCreateProgram);
  L(glAttachShader); L(glLinkProgram); L(glGetProgramiv); L(glUseProgram); L(glGetUniformLocation); L(glUniform1i);
  L(glUniform1f); L(glUniform2f); L(glUniform4f); L(glGenerateMipmap);
#undef L
  wglSwapIntervalEXT_ = (PFN_wglSwapIntervalEXT)wglGetProcAddress("wglSwapIntervalEXT");
  have_shaders = glCreateShader && glUseProgram;
  video_setup();
  return true;
}
void plat_vsync(int on) { if (wglSwapIntervalEXT_) wglSwapIntervalEXT_(on); }
void video_present(void) { SwapBuffers(dc); }
#else
bool video_init(void) { have_shaders = true; video_setup(); return true; }
#endif

void video_resize(int w, int h) { win_w = w > 0 ? w : 1; win_h = h > 0 ? h : 1; }
int video_width(void) { return win_w; }
int video_height(void) { return win_h; }

void video_clear(float r, float g, float b) {
  if (cur_vsync != cfg.vsync) { plat_vsync(cfg.vsync ? 1 : 0); cur_vsync = cfg.vsync; }
  glViewport(0, 0, win_w, win_h);
  glClearColor(r, g, b, 1); glClear(GL_COLOR_BUFFER_BIT);
}

void video_upload_game(const u32 *pix, int w, int h) {
  glBindTexture(GL_TEXTURE_2D, tex_game);
  glTexParameteri(GL_TEXTURE_2D, GL_GENERATE_MIPMAP, GL_TRUE);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, w, h, 0, GL_BGRA, GL_UNSIGNED_BYTE, pix);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
  game_w = w; game_h = h;
}

static void quad(int x, int y, int w, int h, float u0, float v0, float u1, float v1) {
  float X0 = x * 2.0f / win_w - 1, X1 = (x + w) * 2.0f / win_w - 1;
  float Y0 = 1 - y * 2.0f / win_h, Y1 = 1 - (y + h) * 2.0f / win_h;
  glBegin(GL_QUADS);
  glTexCoord2f(u0, v0); glVertex2f(X0, Y0);
  glTexCoord2f(u1, v0); glVertex2f(X1, Y0);
  glTexCoord2f(u1, v1); glVertex2f(X1, Y1);
  glTexCoord2f(u0, v1); glVertex2f(X0, Y1);
  glEnd();
}

void video_draw_game(const Settings *s, Rect r, float u0, float v0, float u1, float v1) {
  bool full_crop = u0 == 0 && v0 == 0 && u1 == 1 && v1 == 1;
  int base_w = game_w % 320 == 0 ? 320 : 256;   // H40 or H32, possibly scaled up by Scale4x
  double par = s->aspect == ASPECT_SQUARE ? (double)base_w / 224 : s->aspect == ASPECT_16_9_STRETCH ? 16.0 / 9 : 4.0 / 3;
  if (!full_crop) par = (double)r.w / r.h;
  int w = r.w, h = (int)(r.w / par);
  if (h > r.h) { h = r.h; w = (int)(r.h * par); }
  if (s->integer_scale && full_crop && h >= 224) { h = h / 224 * 224; w = (int)(h * par); }
  int x = r.x + (r.w - w) / 2, y = r.y + (r.h - h) / 2;
  glBindTexture(GL_TEXTURE_2D, tex_game);
  glColor4f(1, 1, 1, 1);
  if (s->aspect == ASPECT_16_9_AMBIENT && full_crop && have_shaders && prog_ambient && w < r.w) {
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glUseProgram(prog_ambient);
    glUniform1i(glGetUniformLocation(prog_ambient, "tex"), 0);
    int sw = (r.w - w) / 2;
    quad(r.x, y, sw + 2, h, 0.0f, 0, 0.12f, 1);
    quad(x + w - 2, y, r.w - (x + w - r.x) + 2, h, 0.88f, 0, 1.0f, 1);
  }
  bool crt = s->filter == FILT_CRT && have_shaders;
  bool nearest = s->filter == FILT_NEAREST || (s->filter == FILT_PIXELART && 0);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, crt ? GL_LINEAR_MIPMAP_LINEAR : GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  if (crt) {
    glUseProgram(prog_crt);
    glUniform1i(glGetUniformLocation(prog_crt, "tex"), 0);
    glUniform2f(glGetUniformLocation(prog_crt, "texsize"), (float)game_w, (float)game_h);
    glUniform1f(glGetUniformLocation(prog_crt, "lines"), 224.0f * (v1 - v0) / 1.0f);
    glUniform2f(glGetUniformLocation(prog_crt, "outsize"), (float)w, (float)h);
    glUniform2f(glGetUniformLocation(prog_crt, "outorg"), (float)x, (float)(win_h - y - h));
    glUniform1i(glGetUniformLocation(prog_crt, "masktype"), s->crt_mask);
    glUniform1f(glGetUniformLocation(prog_crt, "scan"), s->crt_scanlines / 100.0f);
    glUniform1f(glGetUniformLocation(prog_crt, "glow"), s->crt_glow / 100.0f);
    glUniform1f(glGetUniformLocation(prog_crt, "curv"), (s->crt_curvature && full_crop) ? 1.0f : 0.0f);
    glUniform4f(glGetUniformLocation(prog_crt, "crop"), u0, v0, u1, v1);
    quad(x, y, w, h, 0, 0, 1, 1);
  } else if (have_shaders) {
    glUseProgram(prog_sharp);
    glUniform1i(glGetUniformLocation(prog_sharp, "tex"), 0);
    glUniform2f(glGetUniformLocation(prog_sharp, "texsize"), (float)game_w, (float)game_h);
    glUniform2f(glGetUniformLocation(prog_sharp, "scale"), (float)w / (game_w * (u1 - u0)), (float)h / (game_h * (v1 - v0)));
    glUniform1i(glGetUniformLocation(prog_sharp, "nearest"), nearest);
    quad(x, y, w, h, u0, v0, u1, v1);
  } else {
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, nearest ? GL_NEAREST : GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, nearest ? GL_NEAREST : GL_LINEAR);
    quad(x, y, w, h, u0, v0, u1, v1);
  }
  if (have_shaders) glUseProgram(0);
}

void video_draw_rgba(const u32 *pix, int w, int h, Rect r, bool blend) {
  glBindTexture(GL_TEXTURE_2D, tex_ui);
  glTexParameteri(GL_TEXTURE_2D, GL_GENERATE_MIPMAP, GL_FALSE);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, w, h, 0, GL_BGRA, GL_UNSIGNED_BYTE, pix);
  GLint f = r.w > w ? GL_NEAREST : GL_LINEAR;
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, f);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, f);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
  if (blend) { glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA); }
  glColor4f(1, 1, 1, 1);
  quad(r.x, r.y, r.w, r.h, 0, 0, 1, 1);
  if (blend) glDisable(GL_BLEND);
}

void video_read(u32 *dst) {
  glReadBuffer(GL_BACK);
  glReadPixels(0, 0, win_w, win_h, GL_BGRA, GL_UNSIGNED_BYTE, dst);
  for (int y = 0; y < win_h / 2; y++)
    for (int x = 0; x < win_w; x++) { u32 t = dst[y * win_w + x]; dst[y * win_w + x] = dst[(win_h - 1 - y) * win_w + x]; dst[(win_h - 1 - y) * win_w + x] = t; }
}

static void scale2x(const u32 *s, int w, int h, u32 *d) {
  for (int y = 0; y < h; y++)
    for (int x = 0; x < w; x++) {
      u32 B = s[(y > 0 ? y - 1 : y) * w + x], D = s[y * w + (x > 0 ? x - 1 : x)], E = s[y * w + x];
      u32 F = s[y * w + (x < w - 1 ? x + 1 : x)], H = s[(y < h - 1 ? y + 1 : y) * w + x];
      u32 *o = &d[(y * 2) * (w * 2) + x * 2];
      if (B != H && D != F) {
        o[0] = D == B ? D : E; o[1] = B == F ? F : E;
        o[w * 2] = D == H ? D : E; o[w * 2 + 1] = H == F ? F : E;
      } else { o[0] = o[1] = o[w * 2] = o[w * 2 + 1] = E; }
    }
}

static void scale3x(const u32 *s, int w, int h, u32 *d) {
  for (int y = 0; y < h; y++)
    for (int x = 0; x < w; x++) {
      int xm = x > 0 ? x - 1 : x, xp = x < w - 1 ? x + 1 : x, ym = y > 0 ? y - 1 : y, yp = y < h - 1 ? y + 1 : y;
      u32 A = s[ym * w + xm], B = s[ym * w + x], C = s[ym * w + xp], D = s[y * w + xm], E = s[y * w + x], F = s[y * w + xp];
      u32 G = s[yp * w + xm], H = s[yp * w + x], I = s[yp * w + xp];
      u32 *o = &d[(y * 3) * (w * 3) + x * 3]; int W = w * 3;
      if (B != H && D != F) {
        o[0] = D == B ? D : E;
        o[1] = (D == B && E != C) || (B == F && E != A) ? B : E;
        o[2] = B == F ? F : E;
        o[W] = (D == B && E != G) || (D == H && E != A) ? D : E;
        o[W + 1] = E;
        o[W + 2] = (B == F && E != I) || (H == F && E != C) ? F : E;
        o[2 * W] = D == H ? D : E;
        o[2 * W + 1] = (D == H && E != I) || (H == F && E != G) ? H : E;
        o[2 * W + 2] = H == F ? F : E;
      } else for (int k = 0; k < 3; k++) o[k * W] = o[k * W + 1] = o[k * W + 2] = E;
    }
}

void scale_epx(const u32 *src, int w, int h, u32 *dst, int factor) {
  if (factor == 2) scale2x(src, w, h, dst);
  else if (factor == 3) scale3x(src, w, h, dst);
  else if (factor == 4) {
    static u32 *tmp; static int tsz;
    if (tsz < w * h * 4) { free(tmp); tmp = malloc(w * h * 16); tsz = w * h * 4; }
    scale2x(src, w, h, tmp); scale2x(tmp, w * 2, h * 2, dst);
  } else memcpy(dst, src, w * h * 4);
}
