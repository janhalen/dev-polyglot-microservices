# Use the rstudio/plumber image as the base image
# https://github.com/rstudio/plumber/blob/main/Dockerfile
FROM rstudio/plumber

# Install the jsonlite package
RUN R -e "install.packages('jsonlite')"

# Copy the plumber.R script into the /service directory in the image
COPY service.r /service/service.r

# Set the working directory to /service
WORKDIR /service

# Start the plumber API when the container starts
CMD ["/service/service.r"]