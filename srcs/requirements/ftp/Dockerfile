FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y vsftpd zsh

RUN mkdir -p /var/run/vsftpd/empty

COPY vsftpd.conf /etc/vsftpd.conf

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh


EXPOSE 20 21 21100-21110

ENTRYPOINT ["./entrypoint.sh"]

CMD ["vsftpd", "/etc/vsftpd.conf"]