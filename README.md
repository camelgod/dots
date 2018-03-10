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
`sudo apt updatea && sudo apt upgrade`

Install packages:
`sudo apt install herbstluftwm i3lock dunst trayer dmenu zsh nm-applet nitrogen vim git`

Create ranger config for rifle file opener:
`ranger --copy-config=rifle`


ZSH Config:
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
