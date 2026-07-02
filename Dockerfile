FROM vaultwarden/server:1.36.0

# Configure vaultwarden to listen on 8080 (Railway's expected port)
ENV LISTEN_ADDRESS=0.0.0.0
ENV ROCKET_PORT=8080
ENV PORT=8080

EXPOSE 8080

# Health check (requires --format docker when building with podman)
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
    CMD wget -qO- http://localhost:${PORT}/health || exit 1
