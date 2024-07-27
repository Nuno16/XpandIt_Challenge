FROM centos:7

COPY ./script.sh /

RUN ./script.sh

COPY ./server.p12 /opt/tomcat/ssl/

COPY ./server.xml /opt/tomcat/conf/server.xml

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

EXPOSE 4041
