## Config-files


Packages I depend on for normal Herbstluftwm functionality:
* i3lock
* ffmpeg (for i3lock blur effect)
* dunst
* trayer
* dmenu
* mpd
* mpc
* ncmpcpp
* mopidy-spotify (not autoinstalled)

Packages unrelated to Herbstluftwm but still required in my setup:
* nitrogen (for wallpaper)
* nm-applet (for networkmanager tray icon)
* termite (terminal)
* zsh (shell)
* ranger (file explorer)
* vim (text editor)


# Fresh formatted install commands
Update system:
`sudo apt update && sudo apt upgrade`

Install packages:
`sudo apt install herbstluftwm i3lock ffmpeg dunst trayer dmenu mpd mpc ncmpcpp zsh nm-applet nitrogen vim git`

Make git directory:
`cd && mkdir git && cd git`

Clone this repo and move to home folder:
`git clone https://github.com/camelgod/dots.git && cd dots && cp * ~`


Build termite:
`git clone --recursive https://github.com/thestinger/termite.git
cd termite && make`

Create ranger config for rifle file opener:
`ranger --copy-config=rifle`

ZSH Config:
`git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`



OneLiner:
`sudo apt update && sudo apt upgrade && sudo apt install herbstluftwm i3lock ffmpeg dunst trayer dmenu mpd mpc ncmpcpp zsh nm-applet nitrogen vim git && cd && mkdir git && cd git && git clone https://github.com/camelgod/dots.git && cd dots && cp * ~ && git clone --recursive https://github.com/thestinger/termite.git && cd termite && make && ranger --copy-config=rifle && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`
