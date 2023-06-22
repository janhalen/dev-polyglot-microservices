# Use the rstudio/plumber image as the base image
FROM rstudio/plumber

# Install the jsonlite package
RUN R -e "install.packages('jsonlite')"

# Copy the plumber.R script into the /service directory in the image
COPY ./r-microservice/service.r /service/service.r

# Set the working directory to /service
WORKDIR /service

# Start the plumber API when the container starts
CMD ["R", "-e", "pr <- plumber::plumb('service.r'); pr$run(port = 8888)"]