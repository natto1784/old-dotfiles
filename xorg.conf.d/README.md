# This my xorg config
## Files
**10-nvidia.conf** - This is basically the configuration files recommended by nvidia to enable the nvidia graphics card in the xorg server along with the xrandr commands in my .xinitrc. This might be helpful if you have an optimus system with intel + nvidia cards.  
Update: I switched back to PRIME
Note: I have proprietary nvidia drivers.  
**40-libinput.conf** - I probably don't even need to configure xorg for my mouse and keyboard to work but nothing wrong with just making it sure.
**50-synaptics.conf** - My touchpad configuration with synaptics.
