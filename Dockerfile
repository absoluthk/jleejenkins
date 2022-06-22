FROM tomcat:10.0.22

ADD ./webapp/target/*.war /usr/local/tomcat/webapp

EXPOSE 8080

CMD ["catalina.sh", "run"]
