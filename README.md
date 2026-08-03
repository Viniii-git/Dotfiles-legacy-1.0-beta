# Dotfiles-legacy-1.0-beta

This repository documents my Linux setup (Arch/Debian with KDE Plasma) and the fixes I've developed for running games and applications on aging hardware. It includes solutions for USB Wi-Fi firmware issues, Wine/OpenGL rendering workarounds, and audio configuration via PipeWire.

## Hardware / setup this was built on

- **CPU:** Intel Pentium B950
- **GPU:** Intel HD Graphics (Sandy Bridge) — no Vulkan support, capped at OpenGL 3.1/3.3 (compat profile)
- **Distros:** Arch Linux / Debian, both running KDE Plasma
- **Tools used:** Wine, Lutris, GE-Proton, Sober (native Roblox client)

Because this hardware has no Vulkan support, a lot of “just use Proton/DXVK” advice doesn't apply here — most of these scripts exist to work around that.

## Structure

```text
dotfiles/
├── scripts/
│   ├── wifi-mt7601u-fix.sh   # Fix firmware loading for Ralink/MediaTek MT7601U USB Wi-Fi
│   └── wine-yandere-fix.sh   # Env vars/workarounds for shader bugs on Sandy Bridge iGPUs
├── kde/
│   └── README.md             # How I back up/restore my Plasma config
├── audio/
│   └── pipewire-notes.md     # PipeWire / wpctl volume control cheatsheet
└── install.sh                # Symlinks configs into place
```

## Usage

```bash
git clone https://github.com/Viniii-git/Dotfiles-legacy-1.0-beta.git
cd Dotfiles-legacy-1.0-beta
chmod +x install.sh scripts/*.sh
./install.sh
```

## Why this repo exists

Most dotfiles repos assume decent modern hardware. This one is more about documenting real fixes for an older iGPU without Vulkan — firmware quirks, shader workarounds, audio control — so future-me (or anyone else stuck on similar hardware) doesn't have to re-solve the same problems.

## License

MIT — see [LICENSE](LICENSE).
