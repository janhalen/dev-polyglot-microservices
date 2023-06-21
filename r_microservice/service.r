library(jug)
library(jsonlite)
library(tidyverse)

jug() %>%
  post("/transform", function(req, res, err){
    # Get the JSON data from the request
    data <- fromJSON(content(req$body))
    
    # Add your custom data transformations here
    df <- as_tibble(data)
    transformed_data <- data
    
    # Return the transformed data as a JSON string
    res$send_json(transformed_data)
  }) %>%
  serve_it()