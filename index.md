---
abstract: Monero Node Helm Chart index.
authors:
    - name: Xander Harris
      email: xandertheharris@gamil.com
date: 2024-08-04
title: Monero Node
---

```{toctree}
:caption: meta
:glob:

.github/index
docs/*
readme
tests/index
```

## Installation and Upgrade

```{code-block} shell
helm upgrade --install monero oci://tccr.io/truecharts/monero-node -f values.yaml
```

### Values

```{autoyaml} values.yaml
```
