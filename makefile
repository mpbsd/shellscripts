TARGET = "${HOME}/.local/bin"

install:
	mkdir -p $(TARGET) && stow --restow --target=$(TARGET) scripts

uninstall:
	stow --delete --target=$(TARGET) scripts

.PHONY: install uninstall
