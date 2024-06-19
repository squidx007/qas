# Use an appropriate base image for your application, such as Tomcat or OpenJDK
FROM tomcat:9.0.50-jdk11-openjdk-slim

# Remove the default Tomcat webapps to deploy our own
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the webapps directory of Tomcat
COPY /var/lib/jenkins/workspace/Covering/webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port that Tomcat will run on (default is 8080)
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
