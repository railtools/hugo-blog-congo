# 🚀 Hello Hugo – Railway Template

This is a minimal Hugo static site deployed on [Railway](https://railway.app), using [Nixpacks](https://nixpacks.com) for lightweight, dependency-free setup.

## 🌐 Features

- ✅ Instant deployment with Hugo pre-installed (via Nixpacks)
- ✅ No Dockerfile required
- 🌍 Dynamic `baseURL` from Railway’s public URL
- 🎨 Pre-installed [Congo theme](https://github.com/jpanther/congo) via Hugo Modules
- 🌟 Production build with Hugo and static serving via Caddy

---

## 🚀 Deploy

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/hugo-blog?referralCode=dPr4mc)
---

## 👋 Notes

- Hugo is installed dynamically using Nixpacks — no manual install or image needed.
- Caddy serves your production-ready static files from the `public/` folder.
- The [Congo](https://github.com/jpanther/congo) theme is loaded via Hugo Modules — no need to manage themes manually. Feel free to switch themes.