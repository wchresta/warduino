
.PHONY: blink

HASKINO_RUNTIME=../haskino/firmware/HaskinoRuntime

blink:
	stack build
	stack exec blink
	rm -f $(HASKINO_RUNTIME)/*.ino
	cp blink.ino $(HASKINO_RUNTIME)
	nix-shell --run "cd $(HASKINO_RUNTIME) && make upload"

