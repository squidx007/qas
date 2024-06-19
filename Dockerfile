atharv@atharv-VMware-Virtual-Platform:/var/lib/jenkins/workspace/Covering/webapp$ cd target/
atharv@atharv-VMware-Virtual-Platform:/var/lib/jenkins/workspace/Covering/webapp/target$ vi Dockerfile
atharv@atharv-VMware-Virtual-Platform:/var/lib/jenkins/workspace/Covering/webapp/target$ cd.
Command 'cd.' not found, did you mean:
  command 'cd5' from deb cd5 (0.1-4)
  command 'cdi' from deb cdo (2.3.0-1)
  command 'cdo' from deb cdo (2.3.0-1)
  command 'cde' from deb cde (0.1+git9-g551e54d-1.2)
  command 'cdp' from deb irpas (0.10-9)
  command 'cdb' from deb tinycdb (0.81-1)
  command 'cdw' from deb cdw (0.8.1-3)
Try: sudo apt install <deb name>
atharv@atharv-VMware-Virtual-Platform:/var/lib/jenkins/workspace/Covering/webapp/target$ cd ..
atharv@atharv-VMware-Virtual-Platform:/var/lib/jenkins/workspace/Covering/webapp$ cd ..
atharv@atharv-VMware-Virtual-Platform:/var/lib/jenkins/workspace/Covering$ vi Dockerfile
i# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0.50-jdk11-openjdk-slim

# Set environment variables (optional)
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Remove the default Tomcat webapps to deploy our own
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy your WAR file into the webapps directory of Tomcat
COPY ./path/to/your/application.war $CATALINA_HOME/webapps/ROOT.war

# Optionally, copy additional configurations or resources
# COPY ./path/to/your/config.properties $CATALINA_HOME/conf/

# Expose the port that Tomcat will run on (default is 8080)
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

~
~
