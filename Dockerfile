FROM jboss/wildfly:10.0.0.Final
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY . .
EXPOSE 3000
# ENTRYPOINT exec java $JAVA_OPTS -jar javadocker.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar javadocker.jar
