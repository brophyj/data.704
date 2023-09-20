<<<<<<< HEAD
#' Data of pace values
#'
#' This dataset extracted data from a published KM curve to examine the effect on mortality of a pacemaker installation or no pacemaker following a tansvalvular aortic valve replacement
#' This dataset will reproduce the central KM graph in the reference original publication
#' @format A tibble with 960 rows and 3 variables:
#' \describe{
#'   \item{time}{time when death occurred}
#'   \item{statusu}{0 = censored, 1 = death}
#'   \item{treat}{Pacemaker = received a pacemaker, No Pacemaker = didn't receive a pacemaker}
#'
#'
#' }
#' @source \url{https://pubmed.ncbi.nlm.nih.gov/34620397/}
=======
#' Time to event dataset
#'
#' Dataset  obtained by extracting individual time to event data from published Kaplan Meier curves comparing
#' survival in those who did and did not undergo permanent pacemaker implantation after transcatheter aortic valve replacement from the SWEDEHEART registry
#' The pace dataset has the same hazard ratios as in the original article but is comprised of only 960 individuals equally divided between the 2 groups
#'
#'
#' @format A tibble with 960 rows and 3 variables:
#' \describe{
#'   \item{time}{Time to event}
#'   \item{status}{0 = censored, 1 =death}
#'   \item{treat}{Pacemaker or No pacemaker}
#'}
#' @source {Original data in JACC Cardiovasc. Interv., 14 (19) (2021), pp. 2173-2181 and re-analyzed by Albuquerque AM, Brophy JM. Pacemaker risk following transcatheter aortic valve replacement - A Bayesian reanalysis. Int J Cardiol. 2022;355:32-36.}
>>>>>>> 306cdb01eca052e24bb04682dd183e84bd5cb5f9
"pace"
