# PipeWire / wpctl cheatsheet

Quick reference for controlling volume from the terminal (useful when the
tray applet misbehaves).

```bash
# List all audio sinks/sources with their IDs
wpctl status

# Set volume (0.0 - 1.0, can go over 1.0 to over-amplify)
wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.5

# Mute / unmute
wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

# Bump volume up/down by a percentage
wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
```
