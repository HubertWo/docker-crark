FROM ubuntu:18.04

# Install unrar and wget
RUN apt-get update \
 && apt-get install unrar -y \
 && apt-get install wget -y

# Download and install cRARk - http://www.crark.net/
RUN cd /tmp \
    && wget http://www.crark.net/download/crark55-linux.rar -O crark.rar \
    && unrar -xcrackme e crark.rar \
    && ln -s /tmp/crark /usr/local/bin