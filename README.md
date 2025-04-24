# caddy-docker-proxy-cloudflare

![CI](https://github.com/dbrennand/caddy-docker-proxy-cloudflare/actions/workflows/ci.yml/badge.svg)

Caddy container image with [caddy-docker-proxy](https://github.com/lucaslorentz/caddy-docker-proxy) and [Cloudflare DNS](https://github.com/caddy-dns/cloudflare) modules. Built for ARM and AMD64 CPU architectures.

## FAQs

### What is the point of this container image? Why not built it on the server when needed?

I have some low powered ARM based devices (Raspberry Pis) where building the image takes considerable time and is not practical. Pulling a pre built image is much faster.

### Would you consider adding other modules?

No.

### Is this container image kept up to date?

- A [GitHub Action](.github/workflows/ci.yml) is set up with a cron schedule to re-build the image on the 1st of every month.
- [Renovate](renovate.json) is configured to create pull requests when dependencies are updated.
- Snyk is used to scan the container image for vulnerabilities.

## License 📝

[LICENSE](LICENSE)

## Contributors

[dbrennand](https://github.com/dbrennand)
