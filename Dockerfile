FROM alpine:3.9

# Add bash and curl for the status script
RUN mkdir -p /opt/status_page && \
    apk add -qU --no-cache bash curl

# Add the script and the cron file
COPY status.sh status-cron /opt/status_page/

# Apple the cron file
RUN chmod +x /opt/status_page/status-cron && \
    crontab /opt/status_page/status-cron

# Run the script on startup, and then once every minute
CMD bash /opt/status_page/status.sh && crond -f
