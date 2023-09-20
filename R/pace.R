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
"pace"
