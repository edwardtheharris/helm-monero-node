---
abstract: Dockerfile and other configuration required to build the monero image.
authors:
    - name: Xander Harris
      email: xandertheharris@gamil.com
date: 2024-08-04
title: Docker Information
---

For the build command shown below to work, you'll need to make sure that
your version of {term}`Docker` includes the `buildx` plugin.

## Build Container Image

```{code-block} shell
GHCR_REPO=ghcr.io/username/helm-monero-node/node
DOCKER_REPO=username/monero-node
VERSION="0.0.2-$(git rev-parse --short=6 HEAD)"

source secrets/monero.sh

docker build \
  --build-arg RPC_ORIGINS="${RPC_ORIGINS}" \
  --build-arg VERSION="${VERSION}" -t "${GHCR_REPO}:${VERSION}" \
  -t "${DOCKER_REPO}:${VERSION}" --push -f docker/Dockerfile .
```
