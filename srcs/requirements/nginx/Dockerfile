FROM debian:bullseye
RUN apt update && apt upgrade -y && apt install -y nginx

RUN mkdir -p /etc/nginx/ssl \
		&& apt install -y openssl \ 
		&& openssl req -x509 -nodes -out /etc/nginx/ssl/certificate.crt \
		-keyout /etc/nginx/ssl/certificate.key -subj \
		"/C=FR/ST=NA/L=Angouleme/O=42/OU=42/CN=glaguyon.42.fr/UID=glaguyon"

RUN mkdir -p /var/run/nginx
COPY ./nginx.conf /etc/nginx/conf.d
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]