FROM bdcloud/base 

MAINTAINER james tang <jamess@126.com>

ADD apache-flume-1.7.0-bin.tar.gz /opt/
RUN mv /opt/apache-flume-1.7.0-bin /opt/flume

ENV FLUME_HOME="/opt/flume"

RUN ln -s /opt/flume /app
RUN ln -s /opt/flume/conf /config

COPY run.sh /
COPY ./conf /app/conf/

RUN chmod +x run.sh
CMD ["/run.sh"]
