#' A simulated randomized trial dataset
#'
#' In this simulation, an NGO is planning on launching a training program designed to boost incomes.
#' Several potential confounders have been recorded
#'
#'
#' @format A tibble with 1000 rows and 8 variables:
#' \describe{
#'   \item{id}{Identification}
#'   \item{sex}{Participant sex}
#'   \item{age}{in years}
#'   \item{pre_income}{Income before the intervention}
#'   \item{program}{Randomized intervention}
#'   \item{post_income}{Income after the intervention}
#'   \item{sex_num}{Male = 1, female = 0}
#'   \item{program_num}{0 = No program, 1 = Program}
#' }
#' @source \url{https://evalf20.classes.andrewheiss.com/example/rcts/}
"village_randomized"
