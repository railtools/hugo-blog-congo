# Build the site with Hugo (extended). Go and Git are included so Hugo Modules work.
FROM golang:1.27.4-bookworm AS build

ARG HUGO_VERSION=0.170.1
ARG TARGETARCH=amd64
RUN curl -fsSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${TARGETARCH}.tar.gz" \
    | tar -xz -C /usr/local/bin hugo

WORKDIR /src
COPY . .

# Railway passes its variables as build args; fall back to relative URLs if no public domain is set.
ARG RAILWAY_PUBLIC_DOMAIN
RUN if [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then BASE_URL="https://${RAILWAY_PUBLIC_DOMAIN}/"; else BASE_URL="/"; fi \
    && hugo --gc --minify --baseURL "$BASE_URL"

# Serve the generated files with Caddy on Railway's $PORT.
FROM caddy:2.11.9-alpine
COPY --from=build /src/public /srv
CMD ["sh", "-c", "exec caddy file-server --root /srv --listen :${PORT:-8080}"]
