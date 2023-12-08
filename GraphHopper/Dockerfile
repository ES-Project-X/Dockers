FROM maven:3.8.4-openjdk-17 AS build

WORKDIR /graphhopper

COPY graphhopper .

RUN mvn clean install

FROM openjdk:17-jdk-alpine

ENV JAVA_OPTS "-Xmx1g -Xms1g"

RUN mkdir -p /data

WORKDIR /graphhopper

COPY --from=build /graphhopper/web/target/graphhopper*.jar ./

COPY graphhopper.sh config-example.yml portugal-latest.osm.pbf ./

# Enable connections from outside of the container
RUN sed -i '/^ *bind_host/s/^ */&# /p' config-example.yml

VOLUME [ "/data" ]

EXPOSE 80

HEALTHCHECK --interval=5s --timeout=3s CMD curl --fail http://localhost/health || exit 1

ENTRYPOINT [ "./graphhopper.sh", "-c", "config-example.yml", "-i", "portugal-latest.osm.pbf", "--host", "0.0.0.0", "--port", "80"]
