FROM vaultwarden/server:1.36.0

# Configure Vaultwarden to listen on 8080 (Railway's expected port)
# and use /data for persistent storage (Railway volume mount).
# Variable names match Vaultwarden's real config (see .env.template).
ENV ROCKET_ADDRESS=0.0.0.0
ENV ROCKET_PORT=8080
ENV PORT=8080
ENV DATA_FOLDER=/data

EXPOSE 8080

# Health check (requires --format docker when building with podman)
HEALTHCHECK --interval=30s --timeout=3s --start-period=15s --retries=3 \
    CMD wget -qO- http://localhost:${PORT}/ || exit 1
