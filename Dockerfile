FROM fedora:latest

RUN dnf install -y glibc-minimal-langpack.x86_64 && dnf clean all

RUN dnf install -y https://downloads.plex.tv/plex-media-server/1.2.7.2987-1bef33a/plexmediaserver-1.2.7.2987-1bef33a.x86_64.rpm  && dnf clean all

VOLUME /media
VOLUME /config

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
