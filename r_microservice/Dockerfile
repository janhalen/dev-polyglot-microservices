# First stage: build the R packages
FROM rocker/r-ubuntu:20.04 as builder

# Install required R packages
RUN install2.r plumber jsonlite

# Second stage: create the final image
FROM rhub/r-minimal

# Set the working directory
WORKDIR /src

# Copy the R packages from the builder stage
COPY --from=builder /usr/local/lib/R/site-library /usr/local/lib/R/site-library

# Copy the R script into the container
COPY . /src

EXPOSE 8888

# Run the R script when the container starts
CMD ["Rscript", "./service.r"]


