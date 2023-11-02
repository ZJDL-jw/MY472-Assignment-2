# Define a function to read and transform the data from a CSV file
transform_data <- function(file_path) {
  # Read the CSV file into a data frame
  data <- read.csv(file_path)
  
  # Calculate the average income for each age group
  result <- aggregate(income ~ age, data, FUN = mean)
  
  # Rename the columns for clarity
  colnames(result) <- c("age", "average_income")
  
  return(result)
}

transform_data("Exercise1_data.csv")
