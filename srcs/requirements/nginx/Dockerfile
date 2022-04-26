FROM debian:buster

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y nginx

# CMD [ "bash" ]
CMD ["nginx", "-g", "daemon off;"]