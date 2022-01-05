FROM mysql:5.7.25
RUN mkdir -p /var/log/ && chmod 777 /var/log/

## 校正時區
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY ./conf/my.conf /etc/mysql/conf.d/my.cnf
COPY ./init/init.sql /docker-entrypoint-initdb.d/init-database.sql

RUN chmod 644 /etc/mysql/conf.d/my.cnf