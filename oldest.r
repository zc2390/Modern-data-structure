#' A oldest player Function
#'
#' This function lets you know which player is the oldest player in this year.
#' @param year In which year do you want to know the oldest player? Defaults to 2000.
#' @keywords oldest
#' @export
#' @examples
#' oldest()


oldest <- function(x){
  age_data <- subset(nba, Year == x)
  age_sub <- age_data[ , c("Year", "Player", "Age")]
  age_arr <- arrange(age_sub, desc(Age))
  return(age_arr[1, ])
}
