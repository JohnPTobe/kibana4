FROM docker.platform.cloud.coe.ic.gov/centos:7

LABEL VERSION="1.0.0" \
    RUN="docker run -d -p 5601:5601 docker.platform.cloud.coe.ic.gov/nga-r/kibana4" \
    SOURCE="https://sc.appdev.proj.coe.ic.gov/dayton-giat/kibana4" \
    DESCRIPTION="Kibana 4 image for talking to old elasticsearch 2 install." \
    CLASSIFICATION="UNCLASSIFIED"

# Put code at /kibana4
RUN mkdir -p /kibana4
WORKDIR /kibana4
COPY . /kibana4

# Our app will run on port 5601
EXPOSE 5601

# Start a node-static server on port 5601
CMD bin/kibana
