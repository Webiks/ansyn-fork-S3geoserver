FROM java

WORKDIR /geoserver
ENV GEOSERVER_DATA_DIR=/geoserverData

RUN curl -s https://s3-us-west-2.amazonaws.com/tb-webiks/geoserver/geoserver.tar --output geoserver.tar\
&&  tar -xf geoserver.tar && rm geoserver.tar

EXPOSE 8080

CMD ["./bin/startup.sh"]
