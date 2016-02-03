FROM fedora:latest

RUN dnf install -y https://downloads.plex.tv/plex-media-server/0.9.15.2.1663-7efd046/plexmediaserver-0.9.15.2.1663-7efd046.x86_64.rpm

VOLUME [/media]
VOLUME [/config]

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
