FROM oraclelinux:latest 

MAINTAINER ADADI Hajar "hajar.adadi96@gmail.com"

RUN yum -y update && yum -y install httpd haproxy git && systemctl enable httpd haproxy

COPY ./files/haproxy.cfg /etc/haproxy
COPY ./files/certs/breakout.* /etc/ssl/certs/


RUN git clone https://github.com/igameproject/Breakout.git /var/www/html

CMD systemctl restart haproxy && /usr/sbin/httpd -D FOREGROUND

ENTRYPOINT ["/usr/sbin/init"]

EXPOSE 443