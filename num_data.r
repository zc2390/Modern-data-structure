#' A numeric data transformation Function
#'
#' This function allows you to transfter data in a specific year to a numeric matrix and then return its correlation matrix .
#' @param year In which year do you want to gat the numeric correlation matrix? Defaults to 2000.
#' @keywords numeric correlation martix
#' @export
#' @examples
#' num_data()


num_data <- function(x){
  data_num <- subset(nba, Year == x)
  data_num1 <- sapply(data_num, is.numeric)
  data_num2 <- data_num[ , data_num1, drop = FALSE]
  return(cor(as.matrix(data_num2)))
}
