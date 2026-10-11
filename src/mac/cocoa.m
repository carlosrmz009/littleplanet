#import <Cocoa/Cocoa.h>
#include <stdbool.h>

int plat_pick(bool dir, char *out, int n) {
  @autoreleasepool {
    NSWindow *key = NSApp.keyWindow;
    NSOpenPanel *p = [NSOpenPanel openPanel];
    p.canChooseFiles = !dir;
    p.canChooseDirectories = dir;
    p.canCreateDirectories = dir;
    p.allowsMultipleSelection = NO;
    bool ok = [p runModal] == NSModalResponseOK && p.URL && [p.URL getFileSystemRepresentation:out maxLength:n];
    [key makeKeyAndOrderFront:nil];
    return ok;
  }
}

void mac_register(const char *path) {
  @autoreleasepool {
    LSRegisterURL((__bridge CFURLRef)[NSURL fileURLWithPath:@(path)], true);
  }
}

bool mac_trash(const char *path) {
  @autoreleasepool {
    return [NSFileManager.defaultManager trashItemAtURL:[NSURL fileURLWithPath:@(path)] resultingItemURL:nil error:nil];
  }
}

static int run(NSString *tool, NSArray<NSString *> *args) {
  NSTask *t = [NSTask launchedTaskWithExecutableURL:[NSURL fileURLWithPath:tool] arguments:args error:nil terminationHandler:nil];
  if (!t) return -1;
  [t waitUntilExit];
  return t.terminationStatus;
}

void mac_dock(const char *app, bool add) {
  @autoreleasepool {
    NSString *tmp = [NSTemporaryDirectory() stringByAppendingPathComponent:@"littleplanet-dock.plist"];
    if (run(@"/usr/bin/defaults", @[ @"export", @"com.apple.dock", tmp ])) return;
    NSMutableDictionary *d = [NSMutableDictionary dictionaryWithContentsOfFile:tmp];
    NSString *path = @(app), *url = [NSURL fileURLWithPath:path isDirectory:YES].absoluteString;
    NSMutableArray *apps = [NSMutableArray array];
    bool found = false;
    for (id t in d[@"persistent-apps"]) {
      id u = [t isKindOfClass:NSDictionary.class] ? [t valueForKeyPath:@"tile-data.file-data._CFURLString"] : nil;
      if ([u isEqual:url] || [u isEqual:path]) found = true;
      else [apps addObject:t];
    }
    if (d && found != add) {
      if (add) [apps addObject:@{ @"tile-type": @"file-tile",
                                   @"tile-data": @{ @"file-data": @{ @"_CFURLString": url, @"_CFURLStringType": @15 } } }];
      d[@"persistent-apps"] = apps;
      if ([d writeToFile:tmp atomically:YES] && !run(@"/usr/bin/defaults", @[ @"import", @"com.apple.dock", tmp ]))
        run(@"/usr/bin/killall", @[ @"Dock" ]);
    }
    [NSFileManager.defaultManager removeItemAtPath:tmp error:nil];
  }
}
