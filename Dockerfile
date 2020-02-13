FROM tomcat:9.0.30-jdk8-openjdk
ARG war=target/api-0.0.2-SNAPSHOT.war
COPY ${war} /usr/local/tomcat/webapps/ROOT.war