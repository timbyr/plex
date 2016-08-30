FROM fedora:latest

RUN dnf install -y glibc-minimal-langpack.x86_64 && dnf clean all

RUN dnf install -y https://downloads.plex.tv/plex-media-server/1.0.3.2461-35f0caa/plexmediaserver-1.0.3.2461-35f0caa.x86_64.rpm

VOLUME /media
VOLUME /config

EXPOSE 32400/tcp

ADD run.sh /

CMD ["/run.sh"]
