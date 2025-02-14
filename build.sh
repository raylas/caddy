#!/usr/bin/bash
set -e

go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

xcaddy build v"$1" \
  --output caddy-amd64 \
  --with github.com/caddy-dns/powerdns \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/caddy-dns/route53
