
#' A most_points Function
#'
#' This function lets you know which player has the most points in this year.
#' @param year In which year do you want to know the most-points player? Defaults to 2000.
#' @keywords most points
#' @export
#' @examples
#' most_points()

most_points <- function(x){
  year_data <- subset(nba, Year == x)
  year_sub <- year_data[, c("Year", "Player", "PTS")]
  year_arr <- arrange(year_sub, desc(PTS))
  result <- year_arr[1, 1:3]
  return(result)
}
