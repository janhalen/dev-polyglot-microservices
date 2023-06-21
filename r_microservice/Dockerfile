# First stage: build the base image with the required R packages
FROM rocker/r-ver:3.6.3 as base

# Install the required R packages and pipe the install log to the mounted volume from the compose file
RUN install2.r jug jsonlite | tee /src/install.log

# Second stage: build the app image using the base image from the first stage
FROM base

# Copy the R script into the image
COPY service.r /app/service.r

# Set the working directory
WORKDIR /app

# Expose port 8888 for the Plumber API
EXPOSE 8888

# Run the R script when the container starts
CMD ["Rscript", "service.r"]