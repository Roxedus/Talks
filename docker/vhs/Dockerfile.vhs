FROM linuxserver/mods:universal-docker as docker_bins

FROM ghcr.io/charmbracelet/vhs

COPY --chmod=755 --from=docker_bins /docker-bins/docker_x86_64 /usr/local/bin/docker
COPY --chmod=755 --from=docker_bins /docker-bins/docker-buildx_x86_64 /usr/local/lib/docker/cli-plugins/docker-buildx