# Modified function on the "dev" branch
transform_data_dev <- function(data, calc_method = "average") {
  if (calc_method == "average") {
    # Calculate the average income for each age group
    result <- aggregate(income ~ age, data, FUN = mean)
  } else if (calc_method == "total") {
    # Calculate the total income for each age group
    result <- aggregate(income ~ age, data, FUN = sum)
  } else {
    stop("Invalid calculation method. Use 'average' or 'total'.")
  }
  
  # Rename the columns for clarity
  colnames(result) <- c("age", ifelse(calc_method == "average", "average_income", "total_income"))
  
  return(result)
}

