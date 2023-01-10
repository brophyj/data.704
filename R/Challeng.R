#' Challenger dataset of O-ringsfailure
#'
#' The dataset includes information on O-rings damage from the previous 23 Challenger flights
#' There are 6 o rings involved in each flight.
#'
#' @format A tibble with 392 rows and 9 variables:
#' \describe{
#'   \item{temp}{Outsoide temperature at launch (degrees F)}
#'   \item{pres}{Leak check pressure}
#'   \item{fail}{Number of O-rings that exhibited damage, essentially whether erosion or blowby occurred}
#'   \item{n}{Number of O-rings in each Challenger launcj}
#'   \item{erosion}{Number of O-rings with erosion, arguably the most important outcome variable}
#'   \item{blowby}{Number of blowby incidents}
#'   \item{damage}{Total Damage Index, a composite of uncertain derivation, likely erosion, blowby, depth, location, extent and view according to Tufte}
#' }
#' @source {Dalal, S, Fowlkes, E. B. and Hoadley, B. (1989), Risk analysis of the space shuttle: Pre-challenger prediction of failure, Journal of the American Statistical Association, 84, 945-957. See also Tufte, E. R. (1997), Visual and statistical Thinking: Displays of evidence for making decisions, Cheshire, CT: Graphics Press}
"Challeng"
