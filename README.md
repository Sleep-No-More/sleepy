# Sleepy - Hyprland Dotfiles

My Hyprland window manager configuration and dotfiles for CachyOS.

## Features

- **Hyprland 0.51.1** - Modern Wayland compositor
- **Waybar** - Minimalist status bar with custom modules
- **Kitty** - GPU-accelerated terminal emulator
- **Rofi** - Application launcher
- **CPMenu** - Custom circular power menu
- **CachyOS** - Arch-based Linux distribution

## Directory Structure

```
sleepy/
└── dotfiles/
    ├── .config/
    │   ├── hypr/          # Hyprland configuration
    │   ├── waybar/        # Waybar status bar
    │   ├── kitty/         # Kitty terminal
    │   ├── rofi/          # Rofi launcher
    │   └── cpmenu/        # CPMenu circular menu
    └── .bashrc            # Bash shell configuration
```

## Installation

```bash
git clone https://github.com/Sleep-No-More/sleepy.git
cd sleepy/dotfiles
cp -r .config/* ~/.config/
cp .bashrc ~/
```

## System Info

- **OS**: CachyOS x86_64
- **Host**: B650 AORUS ELITE AX
- **Kernel**: Linux 6.17.3-3-cachyos
- **CPU**: AMD Ryzen 5 7600X (12) @ 5.46 GHz
- **GPU**: AMD Radeon RX 6800
- **WM**: Hyprland 0.51.1 (Wayland)
- **Shell**: bash 5.3.3

## Keybindings

See `dotfiles/.config/hypr/keybindings.conf` for all keybindings.

## License

MIT
