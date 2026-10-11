Fonts the launcher draws with (embedded at build time by tools/embed_fonts.py), all under the SIL Open Font License:

- Archivo (Omnibus-Type): static instances of the variable font, subset to Latin. Expanded Black (wdth 125, wght 900)
  for the wordmark, Condensed Black (62, 900) for the slabs, Bold (100, 700) and Medium (100, 500) for the menu.
  OFL-Archivo.txt.
- Dela Gothic One (syakuzen): subset to katakana. OFL-DelaGothic.txt.

Made with fontTools: `fonttools varLib.instancer Archivo[wdth,wght].ttf wdth=… wght=…` then `fonttools subset`.
