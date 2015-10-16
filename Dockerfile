FROM fedora:latest

RUN dnf install -y https://downloads.plex.tv/plex-media-server/0.9.12.13.1464-4ccd2ca/plexmediaserver-0.9.12.13.1464-4ccd2ca.x86_64.rpm

VOLUME [/media]
VOLUME [/config]

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
