# Use the rstudio/plumber image as the base image
FROM rstudio/plumber

# Install the jsonlite package
RUN R -e "install.packages('jsonlite')"

# Copy the plumber.R script into the /app directory in the image
COPY service.r /service/service.r

# Set the working directory to /app
WORKDIR /service

# Start the plumber API when the container starts
CMD ["R", "-e", "pr <- plumber::plumb('service.r'); pr$run(port = 8888)"]