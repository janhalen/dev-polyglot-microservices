print("before fiery")
library(fiery)
print("after fiery")

print("before jsonlite")
library(jsonlite)
print("after jsonlite")

print("before tibble")
library(tibble)
print("after tibble")

app <- Fire$new()

app$add_route("POST", "/transform", function(req, res) {
  data <- fromJSON(content(req$body))
  df <- as_tibble(data)
  transformed_data <- data
  res$set_body(toJSON(transformed_data))
  res$set_header("Content-Type", "application/json")
})

app$start(port = 8888)