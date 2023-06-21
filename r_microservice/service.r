library(Rserve)
library(jsonlite)

# Start the Rserve server
run.Rserve()

# Define a function to handle incoming POST requests
handle_post_request <- function(request) {
  # Parse the request body as JSON
  data <- fromJSON(rawToChar(request$payload))

  # Transform the data
  transformed_data <- data

  # Return the transformed data as a JSON response
  toJSON(transformed_data)
}

# Register the function to handle POST requests on the "/transform" endpoint
addHTTPHandler("/transform", handle_post_request)