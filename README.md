# Kea DHCP Container

[![](https://img.shields.io/github/license/muhlba91/kea-container?style=for-the-badge)](LICENSE)
[![](https://img.shields.io/github/workflow/status/muhlba91/kea-container/Container?style=for-the-badge)](https://github.com/muhlba91/kea-container/actions)
[![](https://img.shields.io/github/workflow/status/muhlba91/kea-container/Helm?style=for-the-badge)](https://github.com/muhlba91/kea-container/actions)
[![](https://img.shields.io/github/release-date/muhlba91/kea-container?style=for-the-badge)](https://github.com/muhlba91/kea-container/releases)
[![](https://quay.io/repository/muhlba91/kea/status)](https://quay.io/repository/muhlba91/kea)
[![](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/kea)](https://artifacthub.io/packages/search?repo=kea)
<a href="https://www.buymeacoffee.com/muhlba91" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="28" width="150"></a>

An containerized version of [Kea DHCP](https://www.isc.org/kea/).

---

## Installation Notes

Create your Kea configuration files locally and start the container:

```shell
$ docker run --name kea \
  --network host \
  -v ${PWD}/config:/etc/kea \
  quay.io/muhlba91/kea:<TAG>
```

### Container Tags

The container images are tagged according to:

1. the Kea version (`quay.io/muhlba91/kea:<KEA_VERSION>`) - **Note:** this tag will be re-used on every release with the same Kea version!
2. the Kea version and current release (`quay.io/muhlba91/kea:<KEA_VERSION>-<RELEASE>`)
3. the Git Commit SHA (`quay.io/muhlba91/kea:<GIT_COMMIT_SHA>`)

### Helm Chart

For your convencience, a Helm chart is provided. Please take a look at the [`values.yaml`](charts/kea/values.yaml) file for customization.

You can install the chart with Helm like this:

```bash
helm repo add kea https://muhlba91.github.io/kea-container
helm install kea kea/kea -f values.yaml
```

---

## Configuration

Mount your Kea configuration files in `/etc/kea` when running the container.

### Sockets Directory

The sockets directory of Kea processes must be `/run/kea`.

### Logging

You can either direct Kea processes to log to stdout or use the directory `/var/log/kea` to store log files.

---

## Contributing

We welcome community contributions to this project.

## Supporting

If you enjoy the application and want to support my efforts, please feel free to buy me a coffe. :)

<a href="https://www.buymeacoffee.com/muhlba91" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="75" width="300"></a>
