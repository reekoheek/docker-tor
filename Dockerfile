FROM debian

COPY root/etc/apt/sources.list /etc/apt/sources.list

RUN apt-get update -y && \
    apt-get install -y tor 

COPY root/ /

EXPOSE 53/udp 9050

CMD ["tor"] 
