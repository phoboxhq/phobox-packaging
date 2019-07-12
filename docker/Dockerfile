FROM adoptopenjdk:11-jre-hotspot

MAINTAINER Nick 'Milchreis'  <phoboxhq@gmail.com>

ENV HOME="/src"
ENV LC_ALL="en_US.UTF-8"

RUN mkdir /src

ADD phobox.jar /src

EXPOSE 8080

CMD [ "java", "-jar", "/src/phobox.jar", "-nw", "-s", "/src/phobox/"]
