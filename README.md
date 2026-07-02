# Deploy and Host vaultwarden on Railway

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/vaultwarden)

Vaultwarden is an alternative, open-source implementation of Bitwarden's server API — a self-hosted password manager compatible with all official Bitwarden clients. One-click deploy on Railway, no separate database needed (SQLite).

## About Hosting

Vaultwarden (formerly Bitwarden.rs) provides the same functionality as Bitwarden's official servers while staying lightweight and self-hostable. It supports:

- Full password and identity storage
- Bitwarden's native encryption
- Compatible with all official Bitwarden apps (desktop, mobile, browser extensions, CLI)
- Secure Sharing for family/team plans
- Two-factor authentication
- Vault monitoring (integration with Have I Been Pwned)
- Self-hosted web vault portal

Deploying on Railway means you get automatic HTTPS, zero-config SQLite storage in the data volume, and continuous updates.

## Why Deploy

Vaultwarden is one of the most popular self-hosted password managers because it offers:

- **Zero cost** — completely free and open-source
- **Bitwarden client compatibility** — use your existing vault data from official apps
- **Family Sharing** — share passwords with family members or team members securely
- **Secure Sharing** — allow others to access specific items without sharing your entire vault
- **Vault monitoring** — automatic breach checking via Have I Been Pwned integration
- **Two-Factor Authentication** — protect your admin panel with TOTP

## Common Use Cases

1. **Personal Password Management** — secure, self-hosted storage for personal login credentials
2. **Family Sharing** — shared vault between spouses or family members
3. **Small Team Security** — distribute API keys and credentials across a small team
4. **Security Auditing** — maintain full control over password data without relying on third-party providers

## Dependencies

This template runs as a single Docker container with no external dependencies. All data is stored in the local SQLite database within the volume mounted at `/data`.

No environment variables are strictly required beyond those that come from your Railway project.

### Deployment Dependencies

Deploying this template requires:

- A [Railway](https://railway.app) account
- No additional infrastructure needed — SQLite is built-in and data persists in the mounted volume automatically

Once deployed, access the web vault at your Railway-provided URL (e.g., `https://vaultwarden-production.railway.app`) for online password management. Use any Bitwarden-compatible client to connect via "Custom" server with that URL.
