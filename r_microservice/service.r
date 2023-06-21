# Load required libraries
library(httr)
library(jsonlite)

# Define the transform function
transform_function <- function(data) {
  # Calculate the mean of a numeric column in the data frame
  result <- mean(data$numeric_column)
  return(result)
}

# Create an HTTP server
server <- Rook::Server$new()

# Define the /transform endpoint
server$add(app = Rook::URLMap$new(), "/", function(env) {
  # Check if this is a POST request
  if (env$REQUEST_METHOD == "POST") {
    # Read the request body
    req_body <- rawToChar(env$rook.input$read())
    
    # Parse the JSON data from the request body
    data <- fromJSON(req_body)
    
    # Convert the data to a data frame
    df <- as.data.frame(data)
    
    # Run the data through the transform function
    result <- transform_function(df)
    
    # Return the result as JSON
    res <- Rook::Response$new()
    res$write(toJSON(result))
    res$finish()
  } else {
    # Return an error response for non-POST requests
    res <- Rook::Response$new()
    res$status <- 400
    res$write("Bad Request")
    res$finish()
  }
})

# Start the server on port 8888
server$start(port = 8888)
