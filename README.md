# Config-files

#### This repo contains all my most frequently used and essential configuration files. Its sole purpose is to make my life easier when setting up new computers. Most importantly, I think the herbstluftwm config and keybinds are pretty good and I wouldnt know how to use hlwm without my config. Feel free to clone everything, or simply be inspired.

#### (PS: The hlwm autostart is also heavilly commented and includes variables to easilly switch terminal emulators, etc.)

## Packages

#### I depend on these for normal Herbstluftwm functionality:
* i3lock
* ffmpeg (for i3lock blur effect)
* dunst
* trayer
* dmenu
* mpd
* mpc
* ncmpcpp
* mopidy-spotify (not autoinstalled)

#### Urelated to Herbstluftwm but still required in my setup:
* nitrogen (for wallpaper)
* nm-applet (for networkmanager tray icon)
* termite (terminal)
* zsh (shell)
* ranger (file explorer)
* vim (text editor)


## Fresh formatted install commands
##### Update system:
`sudo apt update && sudo apt upgrade`

##### Install packages:
`sudo apt install herbstluftwm i3lock ffmpeg dunst trayer dmenu mpd mpc ncmpcpp zsh nm-applet nitrogen vim git`

##### Make git directory:
`cd && mkdir git && cd git`

##### Clone this repo and move to home folder:
`git clone https://github.com/camelgod/dots.git && cd dots && cp * ~`


##### Build termite:
`git clone --recursive https://github.com/thestinger/termite.git
cd termite && make`

##### Create ranger config for rifle file opener:
`ranger --copy-config=rifle`

##### ZSH Config:
`git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`



## OneLiner:
Quick and easy "install everything I need and go get coffee"
`sudo apt update && sudo apt upgrade && sudo apt install herbstluftwm i3lock ffmpeg dunst trayer dmenu mpd mpc ncmpcpp zsh nm-applet nitrogen vim git && cd && mkdir git && cd git && git clone https://github.com/camelgod/dots.git && cd dots && cp * ~ && git clone --recursive https://github.com/thestinger/termite.git && cd termite && make && ranger --copy-config=rifle && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`
