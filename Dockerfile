FROM fedora:latest

RUN dnf install -y https://downloads.plex.tv/plex-media-server/0.9.14.6.1620-e0b7243/plexmediaserver-0.9.14.6.1620-e0b7243.x86_64.rpm

VOLUME [/media]
VOLUME [/config]

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
