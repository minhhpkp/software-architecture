FROM ubuntu:20.04

# install Xfce desktop environment and tightvncserver
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    xfce4 xfce4-goodies tightvncserver

# create a new user called remote_user
RUN useradd -rm -d /home/remote_user -s /bin/bash remote_user && \
  echo remote_user:123456 | chpasswd

# copy starting shell scripts to remote_user's home directory
COPY start.sh /home/remote_user

WORKDIR /home/remote_user

# make start.sh executable
RUN chmod +x start.sh

# expose port 5901, on which the VNC server listens
EXPOSE 5901

# run the starting script
CMD [ "su", "-c", "./start.sh", "remote_user" ]