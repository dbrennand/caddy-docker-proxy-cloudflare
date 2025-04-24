FROM docker.io/caddy:2.10.0-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@v0.2.1 \
    --with github.com/lucaslorentz/caddy-docker-proxy@v2.9.2

FROM docker.io/caddy:2.10.0-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
