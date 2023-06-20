FROM rocker/r-apt:bionic

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN install.r plumber jsonlite

COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts

EXPOSE 8888
CMD ["Rscript", "R_microservice/app.R"]