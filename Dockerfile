FROM ubuntu:17.10
LABEL maintainer="Volker.Benders@uundm.com"

USER root
RUN rm -rf /var/lib/apt/lists/* && apt-get -y update
RUN apt-get -y install software-properties-common wget tar &&  add-apt-repository ppa:webupd8team/java && apt-get -y update 
RUN  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true |  /usr/bin/debconf-set-selections && \
    apt-get install -y --force-yes --no-install-recommends oracle-java8-installer oracle-java8-set-default  

RUN apt-get install -y oracle-java8-unlimited-jce-policy

# EOF
