# Use an official Tomcat image as base
FROM tomcat:9.0

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps directory
COPY target/AssignmentProject-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port (optional, for documentation only)
EXPOSE 8080
