FROM fedora:latest

RUN dnf install -y https://downloads.plex.tv/plex-media-server/1.0.0.2261-a17e99e/plexmediaserver-1.0.0.2261-a17e99e.x86_64.rpm

VOLUME [/media]
VOLUME [/config]

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
