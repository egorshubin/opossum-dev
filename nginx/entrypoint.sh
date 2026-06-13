#!/bin/sh
set -e

# Ensure TLS material exists so Nginx can boot even before real certs are
# issued. Mount Let's Encrypt certs over /etc/nginx/ssl to use the real ones.
SSL_DIR=/etc/nginx/ssl
if [ ! -f "$SSL_DIR/fullchain.pem" ] || [ ! -f "$SSL_DIR/privkey.pem" ]; then
  echo "[entrypoint] No TLS cert found in $SSL_DIR — generating a self-signed one."
  mkdir -p "$SSL_DIR"
  openssl req -x509 -nodes -newkey rsa:2048 -days 365 \
    -keyout "$SSL_DIR/privkey.pem" \
    -out "$SSL_DIR/fullchain.pem" \
    -subj "/CN=opossum-dev.com" >/dev/null 2>&1
fi

exec nginx -g 'daemon off;'
