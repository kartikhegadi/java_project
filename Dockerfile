# Use a base image that provides the necessary Java runtime, for example:
 FROM openjdk:8-jre-slim

# Download and install Tomcat
ADD tomcat/ /usr/local/tomcat
COPY target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/
# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
