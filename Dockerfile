FROM ubuntu:16.04
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
RUN apt-get update && apt-get --no-install-recommends install curl bzip2 -y && rm -rf /var/lib/apt/lists/*

# Source http://archive.apache.org/dist/ant/binaries/
RUN curl -O http://archive.apache.org/dist/ant/binaries/apache-ant-1.6.0-bin.zip
#Unpack Ant
#RUN tar -xvf apache-ant-1.6.0-bin.tar.bz2
EXPOSE 3000
ADD entrypoint.sh .
#ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
