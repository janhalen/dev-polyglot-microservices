# Define the transform function
transform_function <- function(data) {
  # Calculate the mean of a numeric column in the data frame
  result <- mean(data$numeric_column)
  return(result)
}

#* @post /transform
function(req) {
  tryCatch({
    # Parse the JSON data from the request body
    data <- fromJSON(req$postBody)
    
    # Convert the data to a data frame
    df <- as.data.frame(data)
    
    # Run the data through the transform function
    result <- transform_function(df)
    
    # Return the result as JSON
    return(toJSON(result))
  }, error = function(e) {
    # Print the error message
    print(e$message)
    
    # Return an error response
    res <- plumber::res$status(500)
    res$body <- list(error = e$message)
    return(res)
  })
}

# Start the plumber API
pr <- plumb("service.r") # change "script.R" to the name of this script file
pr$run(port=8888)