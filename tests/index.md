---
abstract: Unit tests for helm charts.
authors:
    - name: Xander Harris
      email: xandertheharris@gamil.com
date: 2024-08-04
title: Unit Tests
---

## Usage

1. Install the [helm unittest] plugin.

   ```{code-block} shell
   :caption: install

   helm plugin install https://github.com/helm-unittest/helm-unittest
   ```

2. Run the tests.

   ```{code-block} shell
   :caption: test

   helm unittest -f 'tests/*.yaml' .
   ```

## Test Suites

This provides the following suites.

### Ingress Suite

```{autoyaml} tests/ingress_test.yaml
```

### Secret Suite

```{autoyaml} tests/secret_test.yaml
```

### Service Suite

```{autoyaml} tests/service_test.yaml
```

### ServiceAccount Suite

```{autoyaml} tests/serviceaccount_test.yaml
```

### StatefulSet Suite

```{autoyaml} tests/statefulset_test.yaml
```
