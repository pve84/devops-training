FROM tomcat:9.0.30-jdk8-openjdk
ARG war
COPY ${war} /usr/local/tomcat/webapps/ROOT.war