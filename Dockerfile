FROM ubuntu:bionic-20220105
WORKDIR /opt
COPY . /opt/
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:bitcoin/bitcoin && \
    apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y libssl-dev && \
    apt-get install -y libboost-all-dev && \
    apt-get install -y libdb4.8++-dev && \
    apt-get install -y libdb4.8 && \
    apt-get install -y libminiupnpc-dev && \
    apt-get install -y libssl1.0-dev && \
    apt-get install -y qt4-qmake libqt4-dev build-essential libboost-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libssl-dev libdb++-dev libminiupnpc-dev
WORKDIR /opt/src/
RUN make -f makefile.unix	
