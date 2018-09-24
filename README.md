# TheKlanc Dotfiles

Welp, here are my dotfiles, still WIP

## Installation
#### Required packages
Make sure you've got sudo set-up, with your user in the sudo group and all that.

The installer script might try to install the packages itself, you probably shouldn't trust it (nor me)

So, in case you wanna install the required packages by yourself: make sure you've got these packages installed: (some of these might not be required, try it for yourself)
* `compton`
* `i3-gaps`
* `rofi`
* `polybar`
* `zsh`
* `rxvt-unicode`
* `feh`
* `playerctl`
* `chromium` (maybe use the vaapi fork?)
* `copyq`
* `ranger`
* `steam`
* `telegram-desktop`
* `udiskie`
* `redshift-gtk`
* `mpv`
* `flameshot`
* `betterlockscreen-git`
* `lightdm`
* `lightdm-webkit-theme-aether`

#### Installation procedure
Clone the repository
`git clone https://github.com/theKlanc/dotfiles.git ~/.dotfiles/`

And then run the install script
`~/.dotfiles/scripts/install.sh`

# Usage

## TO-DO

- [ ] Check that the installer script works (and fix it)
- [ ] Add font installation to script
- [ ] Add betterlockscreen config
- [ ] Add greeter config
- [x] Move internal scripts to scripts/internal/
- [x] Move image scripts to scripts/
