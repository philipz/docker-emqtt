From debian:latest
Maintainer Philipz <philipzheng@gmail.com>

add http://emqtt.io/downloads/ubuntu /emqttd-ubuntu64.zip
RUN apt-get -qq update && apt-get install -y unzip && unzip emqttd-ubuntu64.zip && \
    rm emqttd-ubuntu64.zip && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY ./start.sh /
CMD ["/start.sh"]
