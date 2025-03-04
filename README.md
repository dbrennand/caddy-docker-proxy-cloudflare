# caddy-docker-proxy-cloudflare

Caddy container image with [caddy-docker-proxy](https://github.com/lucaslorentz/caddy-docker-proxy) and [Cloudflare DNS](https://github.com/caddy-dns/cloudflare) modules. Built for ARM and AMD64 CPU architectures.

## FAQs

### What is the point of this container image? Why not built it on the server when needed?

I have some low powered ARM based devices (Raspberry Pis) where building the image takes considerable time and is not practical. Pulling a pre built image is much faster.

### Would you consider adding other modules?

No.

## License 📝

[LICENSE](LICENSE)

## Contributors

[dbrennand](https://github.com/dbrennand)
