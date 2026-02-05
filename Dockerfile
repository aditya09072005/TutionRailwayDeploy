FROM tomcat:9.0

# Railway PORT
ENV PORT=8005

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR as ROOT
COPY SmartTuitionManager.war /usr/local/tomcat/webapps/ROOT.war

# Railway needs exposed port
EXPOSE 8005

# Start Tomcat
CMD ["catalina.sh", "run"]
