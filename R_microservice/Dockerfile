FROM r-base:latest

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts

RUN Rscript install_packages.R

EXPOSE 8888
CMD ["Rscript", "R_microservice/app.R"]