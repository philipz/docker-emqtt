From debian:latest
Maintainer Philipz <philipzheng@gmail.com>
 
ADD http://emqtt.io/downloads/ubuntu /
RUN apt-get -qq update && apt-get install -y unzip && unzip ubuntu && rm ubuntu && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY ./start.sh /
CMD ["/start.sh"]
