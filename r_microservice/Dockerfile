FROM rocker/r-ver:4.0.0

WORKDIR /src

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN install2.r --error plumber jsonlite

COPY . /src

EXPOSE 8888

CMD ["Rscript", "./service.r"]