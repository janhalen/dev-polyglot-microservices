library(fiery)
library(jsonlite)
library(tibble)

app <- Fire$new()

app$add_route("POST", "/transform", function(req, res) {
  print("before fromJSON")
  data <- fromJSON(content(req$body))
  print("after fromJSON")
  
  print("before as_tibble")
  df <- as_tibble(data)
  print("after as_tibble")
  
  transformed_data <- data
  
  print("before toJSON")
  res$set_body(toJSON(transformed_data))
  print("after toJSON")
  
  res$set_header("Content-Type", "application/json")
})

app$start(port = 8888)