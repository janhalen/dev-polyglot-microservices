library(plumber)

#* @post /transform
function(req){
  data <- req$postBody
  # Perform simple data transformation here
  transformed_data <- data * 2
  return(transformed_data)
}

r <- plumb("app.R")
r$run(port=8888)