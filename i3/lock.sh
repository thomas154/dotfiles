# Thomas154 script for i3 lock 

#lock and show the logo1.png 
i3lock -u -e -i  ~/.config/i3/logo1.png

#to turn of display after 10 seconds of locking...
sleep 10 && pgrep i3lock && xset dpms force off
