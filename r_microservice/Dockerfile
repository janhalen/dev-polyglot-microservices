FROM rhub/r-minimal

# Install required R packages using installr
RUN installr -d -t "libcurl openssl-dev libxml2-dev" plumber jsonlite

# Set the working directory
WORKDIR /src

# Copy the R script into the container
COPY . /src

EXPOSE 8888

# Run the R script when the container starts
CMD ["Rscript", "./service.r"]


