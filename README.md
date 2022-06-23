# Mirau's Dotfiles
Mirau's current used .config files for a consistent Linux desktop experience.


## Dependencies
* i3
* polybar
* rofi
* kitty
* Neofetch
* Dunst

## Polybar Scripts
* ```[module/duo]
type = custom/script
exec = python3 $HOME/.config/polybar/duo.py
interval = 120
label = %output%
click-left = brave-browser duolingo.com
```
* ```[module/crypto]
type = custom/script
interval = 300
exec = $HOME/.config/polybar/crypto.py
format-prefix = ""
format-prefix-foreground = #f2a900
```
*```[module/cmus]
type = custom/script
exec = cmus-remote -Q | grep 'stream ' | cut -d' ' -f2-
interval = 5
label = %output%
format-prefix = " "
format-prefix-foreground = #176ce3
format-prefix-font = 3
click-left = cmus-remote -p | notify-send "Now Playing" "$(cmus-remote -Q|grep 'stream'|cut -d' ' -f2-)"
click-right = cmus-remote -s | notify-send "Music Stopped"
scroll-down = cmus-remote -v -5%
scroll-up = cmus-remote -v +5%
```
*```[module/gmail]
type = custom/script
exec = python3 $HOME/.config/polybar/gmail/launch.py
tail = true
click-left = mailspring

```


## Installation
Your standard stuff. Each config has a pretty standard install location.
* i3 `~/.config/i3/config`
* Polybar `~/.config/polybar/config.ini`
* Rofi `~/.config/rofi/`
* Kitty `~/.config/kitty/kitty.conf`
* Neofetch `~/.config/neofetch/config.conf`
* Dunst `~/.config/dunst/dunstrc`
* Bash Aliases `~/.bashrc`
