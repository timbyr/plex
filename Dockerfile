FROM fedora:latest

RUN dnf install -y https://downloads.plex.tv/plex-media-server/0.9.16.6.1993-5089475/plexmediaserver-0.9.16.6.1993-5089475.x86_64.rpm

VOLUME [/media]
VOLUME [/config]

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
