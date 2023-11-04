from tomcat:latest
COPY demo /usr/local/tomcat/webapps/demo
CMD ["catalina.sh","run"]