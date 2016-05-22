FROM tomcat:7
ADD ./target/triplegeo-service.war ${CATALINA_HOME}/webapps/
CMD ${CATALINA_HOME}/bin/catalina.sh run