TARGET = "${HOME}/.local/bin"

install:
	mkdir -p $(TARGET)
	stow --restow --target=$(TARGET) scripts

uninstall:
	stow --delete --target=$(TARGET) scripts
	rm -rf $(TARGET)

.PHONY: install uninstall
