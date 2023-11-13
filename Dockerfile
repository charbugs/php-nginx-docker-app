FROM ubuntu:latest
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y vim curl net-tools nginx php8.1-fpm
WORKDIR /app
COPY entrypoint.sh .
COPY default /etc/nginx/sites-available/default
COPY src /var/www/html
CMD ["sh", "entrypoint.sh"]
EXPOSE 80