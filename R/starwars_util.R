


#' Provides a random character name from Star Wars
#'
#' @param female_only Do you want a female character name?
#' @return A single random Star Wars character name
#'
#' @export
#' @importFrom dplyr select
my_starwars_name <- function(female_only = FALSE){
  name_array <- c("Ray", "Luke", "Chewbacca", "Leia", "Padme", "Han", "Jyn")
  female_array <- c(0,0,0,1,1,0,1)


  if (female_only == TRUE) {
    name_array <- name_array[female_array == 1]
  }
  return (sample(name_array, 1))
}
