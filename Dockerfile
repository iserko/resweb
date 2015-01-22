FROM ubuntu:trusty
MAINTAINER Igor Serko <igor.serko@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qq update && \
    apt-get upgrade -y && \
    apt-get install -y python-pip && \
    apt-get clean
RUN pip install -U pip
RUN pip install -U setuptools distribute
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt \
    --exists-action=w && \
    rm /tmp/requirements.txt
ENV PYTHONPATH /opt/resweb
EXPOSE 5000
ADD . /opt/resweb
CMD python -m resweb.core
