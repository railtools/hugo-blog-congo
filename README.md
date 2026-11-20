# 🚀 Hello Hugo – Railway Template

This is a minimal Hugo static site deployed on [Railway](https://railway.app), built with a small multi-stage `Dockerfile`.

## 🌐 Features

- ✅ Instant deployment with a pinned Hugo Extended version (set `HUGO_VERSION` in the `Dockerfile`)
- 🌍 Dynamic `baseURL` from Railway’s public URL
- 🎨 Pre-installed [Congo theme](https://github.com/jpanther/congo) via Hugo Modules
- 🌟 Production build with Hugo and static serving via Caddy

---

## 🚀 Deploy

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/hugo-blog?referralCode=dPr4mc)
---

## 👋 Notes

- The `Dockerfile` downloads Hugo Extended (with Go and Git for Hugo Modules) and builds the site; the final image only contains Caddy and the generated files.
- Caddy serves your production-ready static files from the `public/` folder.
- The [Congo](https://github.com/jpanther/congo) theme is loaded via Hugo Modules — no need to manage themes manually. Feel free to switch themes.