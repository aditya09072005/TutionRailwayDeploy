FROM tomcat:9.0

# Railway PORT
ENV PORT=8080

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR as ROOT
COPY SmartTuitionManager.war /usr/local/tomcat/webapps/ROOT.war

# Railway needs exposed port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
