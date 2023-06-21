FROM rocker/r-ver:4.0.0

ARG MRAN=https://mran.microsoft.com/snapshot/2022-01-01

RUN echo 'options(repos = c(CRAN="$MRAN"), download.file.method = "libcurl")' >> /etc/R/Rprofile.site

WORKDIR /src

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN install2.r --error plumber jsonlite

COPY . /src

EXPOSE 8888

CMD ["Rscript", "./service.r"]