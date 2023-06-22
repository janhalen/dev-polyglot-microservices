library(plumber)
library(jsonlite)

#' @post /transform
function(req) {
  # Parse the request body as JSON
  input_data <- fromJSON(req$postBody)

 # Extract all numeric values from the input data
  numeric_values <- unlist(input_data)[sapply(unlist(input_data), is.numeric)]
  
  # Compute the sum of the numeric values
  sum_of_values <- sum(numeric_values)

  # Return the transformed data as a JSON response
  return(sum_of_values)
}