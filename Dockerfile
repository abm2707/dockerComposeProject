# Use official Tomcat with JDK 17 image
FROM tomcat:10.1-jdk17-temurin

# Remove default webapps to keep the image clean (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to Tomcat's webapps folder with the desired name (app.war)
COPY target/helloworld-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/app.war

# Expose Tomcat's default HTTP port
EXPOSE 8080

# Tomcat image already has the ENTRYPOINT to start Tomcat, so no need to override
