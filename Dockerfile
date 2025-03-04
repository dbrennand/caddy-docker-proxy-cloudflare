FROM docker.io/caddy:2.9.1-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@1fb6410 \
    --with github.com/lucaslorentz/caddy-docker-proxy@v2.9.2

FROM docker.io/caddy:2.9.1-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
