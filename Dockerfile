FROM mariadb:latest

RUN apt-get update && apt-get install -y \
    openjdk-8-jdk \
    ttf-dejavu \
    redis-server \
    supervisor \
    sudo
    
RUN mkdir -p /var/run/redis-server /var/run/mariadb /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
