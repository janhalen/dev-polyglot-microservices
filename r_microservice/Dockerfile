FROM rocker/r-ver:latest

# Install required R packages
RUN install2.r plumber jsonlite

# Set the working directory
WORKDIR /src

# Copy the R script into the container
COPY . /src

EXPOSE 8888

# Run the R script when the container starts
CMD ["Rscript", "./service.r"]


