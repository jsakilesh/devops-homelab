# Hardened minimal nginx container
FROM nginx:1.25-alpine

RUN rm -f /etc/nginx/conf.d/default.conf

# Add a custom status page
RUN echo '<!DOCTYPE html><html><head><title>DevOps Homelab</title><style>body{background:#0D1117;color:#00D9FF;font-family:sans-serif;display:flex;justify-content:center;align-items:center;height:100vh;margin:0;}h1{border:1px solid #00D9FF;padding:20px;border-radius:8px;}</style></head><body><h1>🚀 DevOps Homelab - Healthy</h1></body></html>' > /usr/share/nginx/html/index.html

# Security hardening: Run as non-root
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    touch /var/run/nginx.pid && \
    chown nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://localhost:8080/ || exit 1

CMD ["nginx", "-g", "daemon off;"]