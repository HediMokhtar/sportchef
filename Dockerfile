FROM airhacks/payara
MAINTAINER Marcus Fihlon, fihlon.ch
COPY target/sportchef.war ${DEPLOYMENT_DIR}
HEALTHCHECK CMD curl --fail http://localhost:8080/api/ping/echo/+ || exit 1
