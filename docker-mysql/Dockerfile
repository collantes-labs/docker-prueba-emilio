FROM mysql:latest
COPY my.cnf /etc/mysql/conf.d/
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]