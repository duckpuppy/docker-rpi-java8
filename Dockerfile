FROM paikens/rpi-baseimage
MAINTAINER Patrick Aikens <paikens@gmail.com>

ENV APTLIST="openjdk-8-jre-headless"

RUN apt-get update -q && \
apt-get install $APTLIST -qy && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-armhf

CMD ["bash"]
