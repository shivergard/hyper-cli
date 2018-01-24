FROM debian:jessie
MAINTAINER Ronalds Sovas <vk@dosje.in>

RUN cd /opt \
    && mkdir hyper-cli 

ADD ./run.sh /opt/hyper-cli/run.sh
RUN chmod 777 /opt/hyper-cli/run.sh
ADD ./hyper /usr/local/bin/hyper
RUN chmod 777 /usr/local/bin/hyper
CMD ["/start.sh"]