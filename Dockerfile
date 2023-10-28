FROM tomcat
COPY target/hello-world-war-1.0.0.war /usr/loca/tomcat/webapps/
CMD ["catalina.sh", "run"]
