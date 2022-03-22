FROM openjdk:11-slim

ARG AVRO_VERSION=1.10.0
ENV AVRO_TOOLS_JAR /avro-tools/avro-tools-${AVRO_VERSION}.jar

RUN apt-get update \
    && apt-get install -y --no-install-recommends wget \
    && mkdir -p /avro \
    && mkdir -p /avro-tools \
    && cd /avro-tools \
    && wget --no-verbose https://repo1.maven.org/maven2/org/apache/avro/avro-tools/${AVRO_VERSION}/avro-tools-${AVRO_VERSION}.jar

WORKDIR /avro

ENTRYPOINT java -jar $AVRO_TOOLS_JAR $0 $@
CMD ["--help"]