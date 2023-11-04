#' Early Childhood Longitudinal Study: Kindergarten Class of 1998-1999, Third Grade
#'
#' The Early Childhood Longitudinal Study, (ecls1), focuses on children's early school experiences. It is a nationally representative sample that collects information from children, their families, their teachers, and their schools. It provides data about the effects of a wide range of family, school, community, and individual variables on children's early performance in school.
#'
#' @format A tibble with 11,078 rows and 18 variables:
#' \describe{
#'   \item{id }{child identification number}
#'   \item{catholic}{dummy: 1= catholic, 0 = public}
#'   \item{race}{child composite race}
#'   \item{race_white}{dummy: 1= race==white, 0= not white}
#'   \item{race_black}{ddummy: 1= race==black, 0= not black}
#'   \item{race_hispanic }{dummy: 1= race==hispanic, 0= not hispanic}
#'   \item{race-asian}{dummy: 1= race==asian, 0= not asian}
#'   \item{places-lived}{# of places child has lived for at east 4 months since 1st grade}
#'   \item{m_age}{age of mother}
#'   \item{f_age}{age of father}
#'   \item{f_ed}{dummy: 1= father's education level is high school or below, 0= some college or above}
#'   \item{m_ed}{dummy: 1= mother's education level is high school or below, 0= some college or above}
#'   \item{m_prestige}{mother's occupational prestige score}
#'   \item{f_prestige}{father's occupational prestige score}
#'   \item{fam_income}{numeric family income }
#'   \item{poverty}{poverty score dummy}
#'   \item{fstamp}{food stamp dummy}
#'   \item{math_score}{3rd grade math test score}
#' }
#' @source \url{https://www.childandfamilydataarchive.org/cfda/archives/cfda/studies/4075}
"ecls1"
