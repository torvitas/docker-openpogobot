FROM centos:centos7

RUN yum -y install epel-release && \
    yum -y update && \
    yum -y install \
		python-pip \
		python-virtualenv \
		protobuf-python \
		python-devel \
		gcc \
		make \
		git && \
    yum -y clean all

ENV OpenPoGoBotVersion 274e254d02bd4763b49ce1180b7e6cbf2592d6b7
RUN mkdir -p /usr/local/pogobot && \
    cd /usr/local/pogobot && \
    git clone --recursive https://github.com/torvitas/OpenPoGoBot.git . && \
    git checkout 274e254d02bd4763b49ce1180b7e6cbf2592d6b7 && \
    git submodule foreach git pull origin master && \
    git submodule foreach git checkout master && \
    virtualenv env && \
    source env/bin/activate && \
    pip install setuptools pip --upgrade && \
    sed -ri "s/60096ccfea0a97e5358be1d32283ebbfb853b00a/master/g" requirements.txt && \
    pip install -r requirements.txt
RUN cd /tmp/ && \
    curl -O http://pgoapi.com/pgoencrypt.tar.gz && \
    tar zxvf pgoencrypt.tar.gz && \
    cd pgoencrypt/src/ && \
    make lib && \
    cp -r libencrypt.so /usr/local/lib/ && \
    cd / && \
    rm -rf /tmp/*
WORKDIR "/usr/local/pogobot/"
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["python", "pokecli.py"]
VOLUME ["/usr/local/pogobot/data"]
COPY src/ /usr/local/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
