FROM postgres:latest
ENV POSTGRES_PASSWORD="${POSTGRES_PASSWORD}"
COPY .env /etc/docker/
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]