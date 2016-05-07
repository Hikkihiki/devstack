FROM ubuntu:16.04
RUN apt-get update && \
    apt-get -y install \
        vim
CMD echo "Hello World!"
