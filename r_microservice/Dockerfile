# First stage: build the base image with the required R packages
FROM rocker/r-ver:4.1.2 as base

# Install the required R packages
RUN install2.r Rserve jsonlite

# Second stage: build the app image using the base image from the first stage
FROM base

# Copy all the files from the r_microservice directory into the image
COPY . /app

# Set the working directory
WORKDIR /app

# Expose port 8888 for the Rserve server
EXPOSE 8888

# Run the R script when the container starts
CMD ["Rscript", "service.r"]