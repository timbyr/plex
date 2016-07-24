FROM fedora:latest

RUN dnf install -y https://downloads.plex.tv/plex-media-server/1.0.2.2413-7caf41d/plexmediaserver-1.0.2.2413-7caf41d.x86_64.rpm

RUN dnf install -y glibc-minimal-langpack.x86_64 && dnf clean all

VOLUME /media
VOLUME /config

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
