FROM docker.io/caddy:2.11.6-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2@c2c2b0e265f26d67526d5e64b17755a3ad8603af \
    --with github.com/caddy-dns/cloudflare@a8737d095ad5a48ca031cea6ab704057dbc2d250

FROM docker.io/caddy:2.11.6-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD ["caddy", "docker-proxy"]
