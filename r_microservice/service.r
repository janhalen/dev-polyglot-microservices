library(plumber)
library(jsonlite)
library(tidyverse)

#* @post /transform
function(req){
  # Get the JSON data from the request
  data <- fromJSON(content(req$postBody))
  
  # Add your custom data transformations here
  df <- as_tibble(data)
  transformed_data <- data
  
  # Return the transformed data as a JSON string
  return(toJSON(transformed_data))
}

# Run the Plumber app on host 0.0.0.0 (accessible from any IP address)
pr <- plumb(service.r)
pr$run(host='0.0.0.0')