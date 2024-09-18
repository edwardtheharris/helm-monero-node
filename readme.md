---
abstract: A Helm chart for deploying a Monero node to Kubernetes.
authors:
  - name: Xander Harris
    email: xandertheharris@gmail.com
date: 2024-08-17
title: Readme
---

[![CodeQL](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/codeql.yml/badge.svg)](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/codeql.yml)
[![Dependabot Updates](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/dependabot/dependabot-updates)
[![Documentation](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/documentation.yml/badge.svg)](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/documentation.yml)
[![OSSAR](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/ossar.yml/badge.svg)](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/ossar.yml)
[![Test Helm Chart](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/helm.yml/badge.svg)](https://github.com/edwardtheharris/helm-monero-node/actions/workflows/helm.yml)
[![wakatime](https://wakatime.com/badge/github/edwardtheharris/helm-monero-node.svg)](https://wakatime.com/badge/github/edwardtheharris/helm-monero-node)

## Usage

1. Build the container image.

   ```shell
   VERSION=0.0.1
   DOCKER_REPO=edwardtheharris/monero-node
   GHCR_REPO=ghcr.io/edwardtheharris/helm-monero-node/node

   export VERSION
   export DOCKER_REPO
   export GHCR_REPO

   docker build \
    --build-arg VERSION="$VERSION-$(git rev-parse --short=6 HEAD)" \
    -t $GHCR_REPO:$VERSION-$(git rev-parse --short=6 HEAD) \
    -t $DOCKER_REPO:$VERSION-$(git rev-parse --short=6 HEAD) \
    --push -f docker/Dockerfile .
   ```

2. Update the `values.yaml` file with appropriate values.
3. Create a namespace.

   ```shell
   kubectl create ns monero
   ```

4. Deploy the release.

   ```shell
   helm -n monero upgrade --install monero . -f values.yaml
   ```
