#' Data of pace4 values
#'
#' This dataset extracted data from the published supplemental  KM curve on the propensity score matched population of 960 patients and truncated their follow-up to 4 years
#'
#' This truncated matched data set will is used for the survival analysis, seems reasonable to truncate as with an average entry age of 82
#' everyone eventually dies which makes the assessment of the effect of a pacemaker installation rather meaningless
#'
#' @format A tibble with 960 rows and 3 variables:
#' \describe{
#'   \item{time}{time when death occurred}
#'   \item{statusu}{0 = censored, 1 = death}
#'   \item{treat}{Pacemaker = received a pacemaker, No Pacemaker = didn't receive a pacemaker}
#'
#'
#' }
#' @source \url{https://pubmed.ncbi.nlm.nih.gov/34620397/}
"pace4"
