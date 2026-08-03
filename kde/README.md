# KDE Plasma config

I use [konsave](https://github.com/Prayag2/konsave) to export/import my
Plasma setup instead of committing raw config files (they're full of
machine-specific paths and IDs that don't travel well between machines).

```bash
# Export your current setup
konsave -e my-plasma-setup

# Save the .knsv file into this folder, then to restore on a new machine:
konsave -i kde/my-plasma-setup.knsv
konsave -a my-plasma-setup
```

Note: I switched back to X11 for gamma/color control — some KDE color
tools still have gaps under Wayland.
