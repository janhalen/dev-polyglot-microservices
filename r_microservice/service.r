library(fiery)
library(jsonlite)
library(tibble)

app <- Fire$new()

app$add_route("POST", "/transform", function(req, res) {
  # Get the JSON data from the request
  data <- fromJSON(content(req$body))
  
  # Add your custom data transformations here
  df <- as_tibble(data)
  transformed_data <- data
  
  # Return the transformed data as a JSON string
  res$set_body(toJSON(transformed_data))
  res$set_header("Content-Type", "application/json")
})

app$start(port = 8888)