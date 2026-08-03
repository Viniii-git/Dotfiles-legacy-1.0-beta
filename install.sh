#!/bin/bash
# Symlinks scripts into ~/.local/bin so they're available on PATH.
set -e

TARGET_DIR="$HOME/.local/bin"
mkdir -p "$TARGET_DIR"

for f in scripts/*.sh; do
    name=$(basename "$f" .sh)
    ln -sf "$(pwd)/$f" "$TARGET_DIR/$name"
    echo "Linked $name -> $TARGET_DIR/$name"
done

echo "Done. Make sure $TARGET_DIR is on your PATH."
