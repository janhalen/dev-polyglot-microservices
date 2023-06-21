# Use the rocker/r-ver image as the base image
FROM rocker/r-ver:latest

# Install the required R packages
RUN install2.r plumber jsonlite tidyverse

# Copy the R script into the image
COPY r_microservice/script.R /app/script.R

# Set the working directory
WORKDIR /app

# Expose port 8888 for the Plumber API
EXPOSE 8888

# Run the R script when the container starts
CMD ["Rscript", "script.R"]


