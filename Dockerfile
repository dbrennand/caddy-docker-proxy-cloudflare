FROM docker.io/caddy:2.10.2-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@f589a18 \
    --with github.com/lucaslorentz/caddy-docker-proxy@44f27c8

FROM docker.io/caddy:2.10.2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "docker-proxy"]
