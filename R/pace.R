#' Time to event dataset
#'
#' Dataset  obtained by extracting individual time to event data from published Kaplan Meier curves comparing
#' survival in those who did and did not undergo permanent pacemaker implantation after transcatheter aortic valve replacement from the SWEDEHEART registry
#'
#' @format A tibble with 960 rows and 3 variables:
#' \describe{
#'   \item{time}{Time to event}
#'   \item{status}{0 = censored, 1 =death}
#'   \item{treat}{Pacemaker or No pacemaker}
#'}
#' @source {Original data in JACC Cardiovasc. Interv., 14 (19) (2021), pp. 2173-2181 and re-analyzed by Albuquerque AM, Brophy JM. Pacemaker risk following transcatheter aortic valve replacement - A Bayesian reanalysis. Int J Cardiol. 2022;355:32-36.}
"pace"
