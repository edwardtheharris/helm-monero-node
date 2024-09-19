FROM archlinux:base-devel
ARG VERSION='0.0.1'
ARG RPC_ORIGINS='192.168.1.0/16'
ENV RPC_ORIGINS=${RPC_ORIGINS}
LABEL org.opencontainers.image.licenses="Unlicense"
LABEL org.opencontainers.image.source="https://github.com/edwardtheharris/helm-monero-node"
LABEL org.opencontainers.image.description="A Monero Node running in ArchLinux"
LABEL org.opencontainers.image.name="monero"
LABEL org.opencontainers.image.version=${VERSION}
RUN pacman -Syyu monero --noconfirm && mkdir -pv /etc/monero
COPY docker/monerod.conf /etc/monero/monerod.conf
COPY docker/entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh
EXPOSE 18080
EXPOSE 18081
CMD ["/bin/entrypoint.sh"]
