FROM archlinux:base-devel
ARG VERSION='0.0.1'
LABEL org.opencontainers.image.licenses="Unlicense"
LABEL org.opencontainers.image.source="https://github.com/edwardtheharris/helm-monero-node"
LABEL org.opencontainers.image.description="A Monero Node running in ArchLinux"
LABEL org.opencontainers.image.name="monero"
LABEL org.opencontainers.image.version=${VERSION}
RUN pacman -Syyu monero --noconfirm
CMD ["/usr/sbin/monerod", "--non-interactive", "--data-dir=/srv/monero",\
    "--limit-rate=-1", "--enable-dns-blocklist", \
    "--hide-my-port", "--enforce-dns-checkpointing", "--db-sync-mode=fast"]
