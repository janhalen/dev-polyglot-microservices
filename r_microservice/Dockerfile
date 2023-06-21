# First stage: build the base image with the required R packages
FROM rocker/r-ver:latest as base

# Install the required R packages
RUN install2.r jug jsonlite
RUN R -e "install.packages('jug', repos='http://cran.rstudio.com/')"

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