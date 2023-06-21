FROM rocker/r-ver:4.0.0

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN install2.r --error plumber jsonlite

COPY ./r_microservice /usr/local/src/myscripts/r_microservice
WORKDIR /usr/local/src/myscripts

EXPOSE 8888
CMD ["Rscript", "./r_microservice/service.r"]