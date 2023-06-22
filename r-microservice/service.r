# plumber.R

library(plumber)
library(jsonlite)

#' @post /transform
function(req) {
  # Parse the request body as JSON
  data <- fromJSON(req$postBody)

  # Transform the data
  transformed_data <- data

  # Return the transformed data as a JSON response
  return(transformed_data)
}