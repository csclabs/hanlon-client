FROM ubuntu:latest

MAINTAINER Joseph Callen <jcpowermac@gmail.com>

RUN apt-get -y update \
    && apt-get -y install ruby1.9.3 git build-essential libssl0.9.8 libssl-dev \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*

RUN gem install bundle
RUN mkdir /home/hanlon 
RUN git clone https://github.com/csc/Hanlon.git /home/hanlon

WORKDIR /home/hanlon
RUN bundle install --system
ENV TEST_MODE true
RUN mkdir /home/hanlon/cli/log 

ENTRYPOINT ["/usr/bin/ruby1.9.3", "/home/hanlon/cli/hanlon"]

CMD ["--help"]
