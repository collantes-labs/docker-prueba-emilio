FROM mysql:latest
COPY my.cnf /etc/mysql/conf.d/

FROM postgres:latest
ENV POSTGRES_PASSWORD="${POSTGRES_PASSWORD}"
COPY .env /etc/docker/