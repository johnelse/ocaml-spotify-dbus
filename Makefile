.PHONY: install uninstall clean

dist/build/lib-spotify_dbus/spotify_dbus.cmxa:
	obuild configure
	obuild build

install:
	ocamlfind install spotify-dbus lib/META \
		$(wildcard dist/build/lib-spotify_dbus/*)

uninstall:
	ocamlfind remove spotify-dbus

clean:
	rm -rf dist
