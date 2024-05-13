FROM python:3.8

# iReceptor custom changes - we need ZIP
RUN apt-get update; \
    apt-get install -y zip

# add this folder to the Docker image
COPY . /opt/ireceptor

# install python modules
RUN pip install -r /opt/ireceptor/requirements-gateway.txt

# set working directory
WORKDIR /root
