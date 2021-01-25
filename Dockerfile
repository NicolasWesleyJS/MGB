FROM ubuntu

RUN apt-get -y update && apt-get install -y \
    build-essential \
    gcc \
    gfortran \
    vim




