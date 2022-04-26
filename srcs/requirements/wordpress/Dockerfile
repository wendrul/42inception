FROM debian:buster

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y mariadb-server
RUN apt-get install -y wget &&\
    wget https://wordpress.org/latest.tar.gz &&\
    tar -xzvf latest.tar.gz &&\
    rm latest.tar.gz

CMD ["bash"]