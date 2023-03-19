# The official Tomcat 9 image as the base image
FROM tomcat:9.0.72-jdk11-corretto-al2

# Copy the .war file to the webapps directory of Tomcat
COPY **/*.war /usr/local/tomcat/webapps/

# Set the environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Expose the port that Tomcat runs on (default is 8080)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]