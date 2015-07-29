From debian:latest
Maintainer Philipz <philipzheng@gmail.com>
 
COPY emqttd-ubuntu64-0.9.3-alpha-20150725.zip /
RUN apt-get -qq update && apt-get install -y unzip && unzip emqttd-ubuntu64-0.9.3-alpha-20150725.zip && \
    rm emqttd-ubuntu64-0.9.3-alpha-20150725.zip && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY ./start.sh /
CMD ["/start.sh"]
