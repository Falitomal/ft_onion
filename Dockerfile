FROM debian:latest

RUN apt-get update -y && apt upgrade -y
RUN apt-get install nginx openssh-server -y
RUN apt-get install tor sudo vim -y

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/html/index.html
COPY index2.html /var/www/html/index2.html

COPY sshd_config /etc/ssh/sshd_config

COPY torrc /etc/tor/torrc

RUN useradd -m ledesman
RUN echo "ledesman:123456" | chpasswd 

RUN groupadd sshusers
RUN usermod -aG sshusers ledesman

ENTRYPOINT service ssh start; nginx; tor
