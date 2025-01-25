#!/bin/bash

GNOME_EXTENSIONS="$HOME/.local/share/gnome-shell/extensions"
EXTENSION_DIR="penguin@arjix.dev"

if ! test -d "$GNOME_EXTENSIONS"; then
    echo "Error: $GNOME_EXTENSIONS does not exist."
    exit 1
fi

git clone https://github.com/ArjixWasTaken/penguin "$GNOME_EXTENSIONS/$EXTENSION_DIR"
if ! test -d "$GNOME_EXTENSIONS/$EXTENSION_DIR"; then
    echo "Error: Failed to clone repository."
    exit 1
fi

gnome-extensions enable "$EXTENSION_DIR"
