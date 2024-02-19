#!/bin/bash

# for debugging purposes
echo "Script name:" $0 
echo "Working directory:" $(pwd)
echo "Script running as user:" $(whoami)

# set environment variable USER
export USER=remote_user

# create the initial configuration files and set vnc password to 123456
echo -e "123456\n123456\nn" | vncserver
vncserver -kill :1

# back up the original xstartup file
mv /home/remote_user/.vnc/xstartup /home/remote_user/.vnc/xstartup.bak

# configure the graphic desktop environment to which VNC server should connect
echo -e "#!/bin/bash\nxrdb \$HOME/.Xresources\nstartxfce4 &" >> /home/remote_user/.vnc/xstartup

# make the xstartup file executable
chmod +x /home/remote_user/.vnc/xstartup

# restart the vnc server
vncserver

# Keep container running
tail -f /dev/null 