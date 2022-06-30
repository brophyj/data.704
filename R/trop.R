#' Data of troponin values
#'
#' This dataset examined the time variation in high sensitivity troponin values in stable patients
#'
#' @format A tibble with 1491 rows and 8 variables:
#' \describe{
#'   \item{pt.id}{patient identification}
#'   \item{Group}{One of 4 clinical groups - "Control" had no cardiac disease, "Multiple Events"  had multiple previous cardiac admissions,"Single MI" had only 1 previous myocardial infarction (MI, heart attack), "Stable Angina" had typical stable exertional angina without a past history of MI}
#'   \item{Sexe}{1= female, 2 = make}
#'   \item{age}{age in years}
#'   \item{hx_diabete}{dbl denoting monthly price for the 20-25/lb. size class}
#'   \item{time}{time in days when blood was drawn}
#'   \item{cTnT}{high sensitivity cardiac troponin values}
#'   \item{creat}{creatinine, a measure of kidney function}
#'
#' }
#' @source \url{https://www.onlinecjc.ca/article/S0828-282X(19)31169-9/addons}
"trop"
