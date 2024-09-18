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
docker build \
  --build-arg VERSION="0.0.1-$(git rev-parse --short=6 HEAD)" \
  -t ghcr.io/edwardtheharris/helm-monero-node/node:0.0.1-$(git rev-parse --short=6 HEAD) \
  -t edwardtheharris/monero-node:0.0.1-$(git rev-parse --short=6 HEAD) \
  --push -f docker/Dockerfile .
```
