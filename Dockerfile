FROM anapsix/alpine-java
MAINTAINER Raymond Wen

ENV JMETER_VERSION 3.1
ENV JMETER_DIR_NAME apache-jmeter-${JMETER_VERSION}
ENV PATH /${JMETER_DIR_NAME}/bin:${PATH}
RUN apk update && apk add ca-certificates wget
RUN wget https://archive.apache.org/dist/jmeter/binaries/${JMETER_DIR_NAME}.tgz -O /${JMETER_DIR_NAME}.tgz && tar xvf /${JMETER_DIR_NAME}.tgz && rm /${JMETER_DIR_NAME}.tgz

EXPOSE 1099
