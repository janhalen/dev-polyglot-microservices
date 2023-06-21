FROM rocker/r-base:latest

# Set the working directory
WORKDIR /src

# Install required R packages using install.packages
RUN R -e "install.packages(c('plumber', 'jsonlite'))"

# Copy the R script into the container
COPY . /src

EXPOSE 8888

# Run the R script when the container starts
CMD ["Rscript", "./service.r"]


