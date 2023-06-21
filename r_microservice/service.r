print("before fiery")
library(fiery)
print("after fiery")

app <- Fire$new()

app$add_route("POST", "/transform", function(req, res) {
  res$set_body("Hello, world!")
  res$set_header("Content-Type", "text/plain")
})

app$start(port = 8888)