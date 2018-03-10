prefix=/usr/local

all:

install:
	mkdir -p $(DESTDIR)$(prefix)/bin
	install -m 755 src/bin/audio-thumbnailer $(DESTDIR)$(prefix)/bin
	mkdir -p $(DESTDIR)$(prefix)/share/thumbnailers
	install -m 644 src/share/thumbnailers/audio.thumbnailer $(DESTDIR)$(prefix)/share/thumbnailers

.PHONY: install
