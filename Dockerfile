FROM fedora:latest

RUN dnf install -y https://downloads.plex.tv/plex-media-server/0.9.16.4.1911-ee6e505/plexmediaserver-0.9.16.4.1911-ee6e505.x86_64.rpm

VOLUME [/media]
VOLUME [/config]

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
