#
# ~/.bash_profile
#!/bin/bash
if [ -z "$WAYLAND_DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
  exec river
else
  source .bashrc
fi
