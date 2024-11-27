## Minho's dotfiles ([n]vim, tmux, bash, etc...)
--

### On the `dotfiles`
I'm currently running BASH mostly configured with a `.profile` (login shell) and `.bashrc` (nologin shell).
Some BASH functionalities are configured in the `.inputrc`.
I will be using X11 (because of GPU) and start my window managers using `.xinitrc`.

#### [n]vim

My current setup is using the lazy.nvim plugin manager.
I try to keep stuff minimal. Check the folder `nvim/` for the specific configs.

#### dwm + dmenu + st

I'm trying some suckless stuff and loving it. Currently, I have custom builds of `dwm` (6.5) + `dmenu` (5.3) + `st` (0.9.2).
In `dwm`, I currently use the following patches: `warp`, `vanity-gaps`, `swallow`
In `dmenu`, I have no patches
In `st`, I have the `alpha` and `scrollback` patches.

TO-DO:
- [] *Status-bar*: Music | Mail | System Monitor | Weather | Datetime + Icons?
- [] *Notifications*: Use `dunst` + Create scripts to show volume/brightness on change
- [] *Color*: Find a better colorscheme (monokai?)
- [] *Wallpaper*: Use cronjob/bash-script to change wallpaper dynamically
- [] *Key-bindings*: Create key-shortcuts for volume/brightness/userControl

`dmenu`-specific:
- [] Prompt for shutdown/reboot/logout
- [] Restrict `dmenu` for .desktop files?
- [] Create scripts using `dmenu` for utilities (SSH, network, etc)
- [] Create script for toggling work-mode (nvim+web) / fun-mode (steam+music)

### On softwares/utilities

Here I'll keep a list of softwares/utilities that I use in most of my Linux systems.

- *WM*: `dwm`, `i3`, `xfce4`
- *Terminal*: `st`, `allacrity`
- *Editor*: `nvim`, `vscodium` (for LaTeX)
- *Writing*: `texlive` (LaTeX), `xournalpp` (note-taking)
- *Web*: `Firefox`, `Chromium` / maybe `surf` someday
- *Photos*: `feh`
- *Video*: `mpv`, `ffmpeg`
- *Audio*: `mpd`, `ncmpcpp` | need some solution for Spotify
- *Gaming*: `retroarch`, `steam`
- *Utilities*: `dmenu`, `fonts-noto`, `evince`, `scrot`, `slock`, `surf`, `syncthing`, `btop`

Ps.: Currently I'm trying `Wireplumber` as a replacement for `PulseAudio`+`JACK`
