FROM fedora:latest

RUN dnf install -y https://downloads.plex.tv/plex-media-server/0.9.12.19.1537-f38ac80/plexmediaserver-0.9.12.19.1537-f38ac80.x86_64.rpm

VOLUME [/media]
VOLUME [/config]

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
