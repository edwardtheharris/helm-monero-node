---
abstract: Monero Node Helm Chart index.
authors:
    - name: Xander Harris
      email: xandertheharris@gamil.com
date: 2024-08-04
title: Monero Node
---

```{toctree}
:caption: contents

docker/index
templates/tests/index
tests/index
```

```{toctree}
:caption: meta
:glob:

.github/index
license
readme
security
```

## Installation and Upgrade

```{code-block} shell
helm upgrade --install monero oci://tccr.io/truecharts/monero-node -f values.yaml
```

### Build Container Image

```{code-block} shell
docker build \
  --build-arg VERSION="0.0.2-$(git rev-parse --short=6 HEAD)" \
  -t ghcr.io/edwardtheharris/helm-monero-node/node:0.0.2-$(git rev-parse --short=6 HEAD) \
  -t edwardtheharris/monero-node:0.0.2-$(git rev-parse --short=6 HEAD) \
  --push -f docker/Dockerfile .
```

### Chart

```{autoyaml} Chart.yaml
```

### Values

```{autoyaml} values.yaml
```

## Indices and tables

- {ref}`genindex`
- {ref}`modindex`
- {ref}`search`

## Glossary

```{glossary}
Docker
  Docker is the first container runtime to become ubiquitous and so is still
  frequently used to build images that will run on Kubernetes or other
  orchestrators. More information is available [here](https://app.docker.com/).

GitHub
   Most likely the site this repository is hosted on. More information is
   available [here](https://github.com).

Helm
   A tool commonly used to deploy applications to {term}`Kubernetes`. More
   information is available [here](https://helm.sh).

Kubernetes
   An ancient Greek word that means 'sailor' or 'navigator', it is the
   most common container orchestration system currently in use. More
   information is available [here](https://kubernetes.io).
```
