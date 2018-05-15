#
# ~/.bashrc
#

# If not running interactively, don't do anything

export BROWSER=/usr/bin/qutebrowser
EDITOR=/usr/bin/vim
alias sudo="sudo "
alias rtv="rtv --theme custom"

shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

#blurme and blr alias
alias blurme="~/scripts/./blurme"
alias blrsh="~/scripts/./blr.sh"

#keynav
alias keynav="~/apps/keynav/./keynav"

#vimwiki
alias viki="vi ~/vimwiki/index.wiki"
cviki(){
 vim ~/vimwiki/$1.wiki
}
oviki(){
	vim ~/vimwiki/$1.wiki
}

#tmux 
alias tma="tmux attach -t"

##scrots
ssa(){
    read -r G < <(slop -f "%g")
	import -window root -crop $G /tmp/scrot0.png
	datime="$(date '+%d-%m-%Y-%H:%M:%S')"
	name="$(echo $datime | dmenu)"
	mv /tmp/scrot0.png ~/Pictures/screenshots/$name.png
}


ss(){
	datime="$(date '+%d-%m-%Y-%H:%M:%S')"
	name="$(echo $datime | dmenu)"
	scrot ~/Pictures/screenshots/$name.png
}

ssw(){
	datime="$(date '+%d-%m-%Y-%H:%M:%S')"
	name="$(echo $datime | dmenu)"
	scrot -u ~/Pictures/screenshots/$name.png
}

ssc(){
    read -r G < <(slop -f "%g")
	import -window root -crop $G /tmp/scrot1.png
	cat /tmp/scrot1.png | xclip -selection clipboard -t image/png
}


#ttytimer
alias ttc="tty-clock -c"

tt(){
	ttytimer $3:$2:$1
}

#pygment 
alias catr="pygmentize -f terminal256 -O style=monokai"
chtml(){
	pygmentize -f html -O full,style=$3,linenos=1 $1 > $2
}

phtml(){
	pygmentize -f html -O full,style=$2,linenos=1 $1 > /tmp/xyz.html
	surf /tmp/xyz.html
}


#mdv
mdvp(){
mdv -t 886.366 $1 | less -r
}

#xclip
alias pbcopy='xclip -selection clipboard'     # copy to clipboard, ctrl+c, ctrl+shift+c
alias pbpaste='xclip -selection clipboard -o' # paste from clipboard, ctrl+v, ctrl+shift+v
alias pbselect='xclip -selection primary -o' # paste from highlight, middle click, shift+insert

##redshift alias
alias rs='redshift -O'

#Generic shortcuts:
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias visualizer="ncmpcpp -s visualizer"
alias news="newsbeuter"
alias email="mutt"
alias files="ranger"
alias chat="weechat"
alias audio="ncpamixer"
alias calender="calcurse"

#Some aliases
alias v="vim"
alias ka="killall"
alias sv="sudo vim"
alias rr="ranger"
alias ls='ls -hN --color=auto --group-directories-first'
alias g="git"
alias gitup="git push origin master"
alias mkdir="mkdir -pv"
alias crep="grep --color=always"
alias p="sudo pacman"
alias sdn="sudo shutdown now"
alias yt="youtube-dl -ic"
alias yta="youtube-dl -xic"
alias starwars="telnet towel.blinkenlights.nl"
alias nf="clear && neofetch --ascii_colors 39 39"
alias newnet="sudo systemctl restart NetworkManager"
# alias atltime="sudo timedatectl set-timezone India/kolkata && i3 restart"
alias YT="youtube-viewer"
alias syt="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias mailsync="bash ~/.config/Scripts/mailsyncloop"
alias wifispeed="speedometer -r wlp2s0"
# alias tr="transmission-remote"
# alias debase="sudo umount /home/Shared/Videos & screen.sh l"
# alias ref="python ~/.config/Scripts/shortcuts.py && source ~/.bashrc"
alias bars="bash ~/.config/polybar/launch.sh"
alias lsc="screen.sh l"
alias vsc="screen.sh v"
alias dsc="screen.sh d"
alias speedvid="bash ~/.config/Scripts/speedvid.sh"
alias bw="wal -i ~/.config/wall.png"

#Music
alias pause="mpc toggle"
alias next="mpc next"
alias prev="mpc prev"
alias trupause="mpc pause"
alias beg="mpc seek 0%"
alias lilbak="mpc seek -10"
alias lilfor="mpc seek +10"
alias bigbak="mpc seek -120"
alias bigfor="mpc seek +120"


#Directory Shortcuts:
alias h="cd ~ && ls -a"
alias d="cd ~/Documents && ls -a"
alias D="cd ~/Downloads && ls -a"
alias p="cd ~/Pictures && ls -a"
alias v="cd ~/Videos && ls -a"
alias m="cd ~/Music && ls -a"
alias b="cd ~/Books && ls -a"
alias s="cd ~/.config/Scripts && ls -a"
alias r="cd / && ls -a"
alias cf="cd ~/.config && ls -a"
alias cfb="vim ~/.bashrc"
alias cfz="vim ~/.zshrc"
alias cfv="vim ~/.vimrc"
alias cfr="vim ~/.config/ranger/rc.conf"
alias cfi="vim ~/.config/i3/config"
alias cfq="vim ~/.config/qutebrowser/keys.conf.base"
alias cfQ="vim ~/.config/qutebrowser/qutebrowser.conf"
alias cfm="vim ~/.config/mutt/muttrc"
alias cfM="vim ~/.config/moc/keymap"
alias cff="vim ~/.config/Scripts/folders"
alias cfc="vim ~/.config/Scripts/configs"
alias cfT="vim ~/.config/Scripts/tmux.conf"
alias eb="vim ~/Documents/LaTeX/uni.bib"
alias cv="vim ~/Documents/LaTeX/cv.tex"
alias cfa="vim ~/.config/mutt/aliases"
alias cfp="vim ~/.config/polybar/config"
alias cfd="vim ~/.Xdefaults"


[[ $- != *i* ]] && return

alias vi='vim'
alias c='clear'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

alias ftpmount='sudo curlftpfs -o allow_other blesson:thomas@192.168.1.100:2221 ~/ftpmount'

#spd
spd(){
	mpv --really-quiet "$(echo ~/Downloads/mps/Binary Code - High Tech Interface Sound Effects.webm)" & PMPV=$!
    speedtest-cli --no-upload --bytes | lolcat
	kill $PMPV
	wait $PMPV 2> /dev/null
}

vf(){
	mpsyt set video_format $1 & abc=$!
	sleep 0.8
	kill -9 $abc
}

alias jarvis='cd /media/blesson/jarvis'
alias flash='cd /media/blesson/flash'
alias dict="sdcv -u Oxford\ Advanced\ Learner\'s\ Dictionary -c"
export PATH=$PATH:/home/antergos/apps/greenclip
export VISUAL=vim
export EDITOR="$VISUAL"
set -o vi

eval "$(dircolors ~/.dircolors)";

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

vf() {
  local files

  files="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1 -m)"
  # echo "$files"
  openWith=`echo -e "xdg-open\nvim\ncd\nranger\nmpv\nfeh\nqutebrowser\ngoogle-chrome"| fzf`
  if [[ -n $files && $openWith != "" ]]
  then
     $openWith "$files"
  fi
}

ffc() {
  local file

  file="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1)"

  if [[ -n "$file" ]]
  then
     if [[ -d "$file" ]]
     then
        cd -- "$file"
     else
        cd -- "${file:h}"
     fi
  fi
}




### clonezila


#-------- Bash Color Code {{{
#------------------------------------------------------
# DESC: color code for bash compatible shell
# LINK: https://wiki.archlinux.org/index.php?title=Bash/Prompt_customization&oldid=419076#List_of_colors_for_prompt_and_Bash

# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[10;95m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White

# }}}

#-------- Clonezilla CLI (Clone and Restore Image) {{{
#------------------------------------------------------
### Full Disk Clone and Restore
clonezilla-disk-cloning() {
  if [ $# -lt 2 ]; then
    echo -e "clone full disk to image"
    echo -e "\nUsage: $0 <output_file> <device>"
    echo -e "\nExample: $0 mydesktop sdx"
    echo -e "\nNote: <output_file> will be saved to your current path"
    return 1
  fi
  OUTPUT_FILE="$1_clonezilla_disk_`date +'%Y_%m_%d'`"
  DEVICE_NAME="$2"
  echo "${Yellow}>>>Checking if device is mounted ${Color_Off}"
    MOUNT_STATUS=$(mount | grep /dev/"$DEVICE_NAME" | wc -l)
    if [ "$MOUNT_STATUS" -ne 0 ]
    then
      lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$DEVICE_NAME"
      echo "${Red}>>>/dev/$DEVICE_NAME is mounted. You have to unmount the device and all of its partitions then try again ${Color_Off}"
      return 1
    fi
  echo "${Blue}>>>Set current output path to $PWD ${Color_Off}"
    sudo sed -i 's:ocsroot=.*:ocsroot='\""$PWD"\"':g' /etc/drbl/drbl.conf
  echo "${Green}>>>Start full disk cloning process ${Color_Off}"
  echo "${Green}>>>$OUTPUT_FILE image will be saved to $PWD ${Color_Off}"
    sudo ocs-sr -q2 -c -j2 -z1p -i 5000000 -sc -p true savedisk "$OUTPUT_FILE" "$DEVICE_NAME"
  echo "${Red}>>>Changing permission of $OUTPUT_FILE image ${Color_Off}"
    sudo chmod -R 777 "$OUTPUT_FILE"
}

clonezilla-disk-restore() {
  if [ $# -lt 2 ]; then
    echo -e "restore full disk image to device"
    echo -e "\nUsage: $0 <input_file> <device>"
    echo -e "\nExample: $0 mydesktop_clonezilla_disk_2016_07_02 sdx"
    return 1
  fi
  INPUT_FILE="$1"
  DEVICE_NAME="$2"
  echo "${Yellow}>>>Checking if device is mounted ${Color_Off}"
    MOUNT_STATUS=$(mount | grep /dev/"$DEVICE_NAME" | wc -l)
    if [ "$MOUNT_STATUS" -ne 0 ]
    then
      lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$DEVICE_NAME"
      echo "${Red}>>>/dev/$DEVICE_NAME is mounted. You have to unmount the device and all of its partitions then try again ${Color_Off}"
      return 1
    fi
  echo "${Green}>>>Start full disk restore process ${Color_Off}"
    sudo /usr/sbin/ocs-sr -g auto -e1 auto -e2 -c -r -j2 -p true restoredisk "$INPUT_FILE" "$DEVICE_NAME"
}

### Partition Clone and Restore
clonezilla-partition-cloning() {
  if [ $# -lt 2 ]; then
    echo -e "clone device partition to image"
    echo -e "\nUsage: $0 <output_file> <device>"
    echo -e "\nExample: $0 mylaptop sdx2"
    echo -e "\nNote: <output_file> will be saved to your current path"
    return 1
  fi
  OUTPUT_FILE="$1_clonezilla_part${PART_NUM}_`date +'%Y_%m_%d'`"
  DEVICE_NAME="$2"
  PART_NUM=$(echo "$2" | sed 's/[^0-9]*//g')
  echo "${Yellow}>>>Checking if device is mounted ${Color_Off}"
    MOUNT_STATUS=$(mount | grep /dev/"$DEVICE_NAME" | wc -l)
    if [ "$MOUNT_STATUS" -ne 0 ]
    then
      lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$DEVICE_NAME"
      echo "${Red}>>>/dev/$DEVICE_NAME is mounted. You have to unmount then try again ${Color_Off}"
      return 1
    fi
  echo "${Blue}>>>Set current output path to $PWD ${Color_Off}"
    sudo sed -i 's:ocsroot=.*:ocsroot='\""$PWD"\"':g' /etc/drbl/drbl.conf
  echo "${Green}>>>Start partition cloning process ${Color_Off}"
  echo "${Green}>>>$OUTPUT_FILE image will be saved to $PWD ${Color_Off}"
    sudo /usr/sbin/ocs-sr -q2 -c -j2 -z1p -i 5000000 -sc -p true saveparts "$OUTPUT_FILE" "$DEVICE_NAME"
  echo "${Red}>>>Changing permission of $OUTPUT_FILE image ${Color_Off}"
    sudo chmod -R 777 "$OUTPUT_FILE"
}

clonezilla-partition-restore() {
  if [ $# -lt 2 ]; then
    echo -e "restore image to device partition"
    echo -e "\nUsage: $0 <input_file> <device>"
    echo -e "\nExample: $0 mylaptop_clonezilla_partition2_2016_07_02 sdx2"
    echo -e "\nNote: partition <device> usually have numbers at the end (sdx1)"
    return 1
  fi
  INPUT_FILE="$1"
  DEVICE_NAME="$2"
  echo "${Yellow}>>>Checking if device is mounted ${Color_Off}"
    MOUNT_STATUS=$(mount | grep /dev/"$DEVICE_NAME" | wc -l)
    if [ "$MOUNT_STATUS" -ne 0 ]
    then
      lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$DEVICE_NAME"
      echo "${Red}>>>/dev/$DEVICE_NAME is mounted. You have to unmount then try again ${Color_Off}"
      return 1
    fi
  echo "${Green}>>>Start partition restore process ${Color_Off}"
    sudo /usr/sbin/ocs-sr -g auto -e1 auto -e2 -c -r -j2 -k -p true restoreparts "$INPUT_FILE" "$DEVICE_NAME"
}

# }}}



alias df='df -hT --total'       # human readable, print filetype, and total
alias lsblk='lsblk -o "KNAME,HOTPLUG,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID,MODEL,SERIAL"'




#==============================================
# This is what I use, added to bashrc/zshrc

FFX_MONO="1"		# mono
FFX_DUAL="2"		# dual channel
FFX_HW="default" 	# alsa; run 'cat /proc/asound/pcm' to change to the correct numbers
FFX_PULSE="pulse" 	# pulseaudio; might have to install pavucontrol to change volume
FFX_FPS="30"		# frame per seconds
FFX_WIN_FULL="1366x768" #$(xwininfo -root | grep 'geometry' |awk '{print $2;}')	# record fullscreen
FFX_AUDIO="pcm_s16le"	# audio codec
FFX_VIDEO="libx264"	# video codec
FFX_PRESET="ultrafast"	# preset error? run 'x264 -h' replace with fast,superfast, slow ..etc
FFX_CRF="0"
FFX_THREADS="0"
FFX_SCALE="scale=1280:720"	# scale resolution, no black bars on sides of video on youtube
FFX_OUTPUT=~/Videos/output.avi
# Note: -vf is optional delete if you want, -y is to overwrite existing file

# capture fullscreen using alsa or pulseaudio
ffx-full-hw() { ffmpeg -f alsa -ac $FFX_MONO \
	-i $FFX_HW -f x11grab -r $FFX_FPS -s $FFX_WIN_FULL -i :0.0 \
	-acodec $FFX_AUDIO -vcodec $FFX_VIDEO \
       	-preset $FFX_PRESET -crf $FFX_CRF -threads $FFX_THREADS \
	-y $FFX_OUTPUT
}
ffx-full-pa() { ffmpeg -f alsa -ac $FFX_MONO \
	-i $FFX_PULSE -f x11grab -r $FFX_FPS -s $FFX_WIN_FULL -i :0.0 \
	-acodec $FFX_AUDIO -vcodec $FFX_VIDEO \
       	-preset $FFX_PRESET -crf $FFX_CRF -threads $FFX_THREADS \
	-y $FFX_OUTPUT
}

# capture single window, use mouse cursor to select window you want to record
ffx-winselect-hw() { 
	FFX_INFO=$(xwininfo -frame)

	ffmpeg -f alsa -ac $FFX_MONO \
	-i $FFX_HW -f x11grab -r $FFX_FPS \
	-s $(echo $FFX_INFO | grep -oEe 'geometry [0-9]+x[0-9]+'\
	| grep -oEe '[0-9]+x[0-9]+') \
	-i :0.0+$(echo $FFX_INFO | grep -oEe 'Corners:\s+\+[0-9]+\+[0-9]+' \
	| grep -oEe '[0-9]+\+[0-9]+' | sed -e 's/\+/,/' ) \
	-acodec $FFX_AUDIO -vcodec $FFX_VIDEO \
       	-preset $FFX_PRESET -crf $FFX_CRF -threads $FFX_THREADS \
	-y $FFX_OUTPUT
}
ffx-winselect-pa() { 
	FFX_INFO=$(xwininfo -frame)

	ffmpeg -f alsa -ac $FFX_MONO \
	-i $FFX_PULSE -f x11grab -r $FFX_FPS \
	-s $(echo $FFX_INFO | grep -oEe 'geometry [0-9]+x[0-9]+'\
	| grep -oEe '[0-9]+x[0-9]+') \
	-i :0.0+$(echo $FFX_INFO | grep -oEe 'Corners:\s+\+[0-9]+\+[0-9]+' \
	| grep -oEe '[0-9]+\+[0-9]+' | sed -e 's/\+/,/' ) \
	-acodec $FFX_AUDIO -vcodec $FFX_VIDEO \
       	-preset $FFX_PRESET -crf $FFX_CRF -threads $FFX_THREADS \
	-vf $FFX_SCALE \
	-y $FFX_OUTPUT
}

screen_cast(){

	ffmpeg -f x11grab -r 30 -s 1366x768 -i :0.0 -f alsa -i default -v:q 5 $1.mp4
}

audio_record(){

	ffmpeg -f alsa -i default -acodec aac -y audio.aac
}

video_record(){
	ffmpeg -f x11grab -r 30 -s 1366x768 -i :0.0 -vcodec libx264 -preset ultrafast -n video.mkv
}


#########################################
		#PYWAL
#########################################


# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh


fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}





##### MAN page color

export MANROFFOPT='-c'
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
export LESS_TERMCAP_md=$(tput bold; tput setaf 133) #head/options
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 0)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 149) #text
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)


###surfraw path

export PATH=$PATH:/usr/lib/surfraw
floc(){
	$1 "$(locate * | fzf )"
}

#alias of scripts
dmenuhandler(){
	~/scripts/./dmenuhandler
}
linkhandler(){
	~/scripts/./linkhandler
}
spawndl(){
	~/scripts/./spawndl
}


vpn(){
	location=`ls ~/scripts/vpnconfig| dmenu -i -p "location"`
	[[ $location = "" ]] && return 0 
	sudo openvpn ~/scripts/vpnconfig/$location
}


#video downloader
alias vdw="~/scripts/dmenu-downloader/./vid-download"
#gui downloader
alias dw="~/scripts/gui-downloader/./gui-download"

mkd(){
	mkdir $1 | lolcat 
	cd $1
}

rmdir(){
	folder=`pwd | awk -F / '{ print $NF }'`
	rm -r ../$folder
	cd ..
}

alias scrbash="source ~/.bashrc"
export PATH=$PATH:/home/antergos/scripts

#qr-filetransfer function
alias qrft="~/scripts/qr-filetransfer/./qr-filetransfer.py -f" 


# note alias

alias note="~/apps/notes/note-Linux-x86_64"
