#' Dronedarone and amiodarone dataset
#'
#' Anonymized data of patients admitted for incident atrial fibrillation
#' Patients are discharged on either amiodarone or dronedarone
#' Variables are measured at baseline admission, except for post_coag which is measured on discharge
#'
#' @format A tibble with 2073 rows and 28 variables:
#' \describe{
#'   \item{age}{Patient age}
#'   \item{sex}{male =1, female =2}
#'   \item{AMI}{Previous acute myocardial infarction}
#'   \item{CHF}{Previous congestive heart failure}
#'   \item{PVD}{Peripheral vascular disease}
#'   \item{Dementia}{Dementia}
#'   \item{COPD}{Chronic obstructive pulmonary disease}
#'   \item{PepticDisease}{Peptic ulcer disease}
#'   \item{RenalDisease}{Patient age}
#'   \item{Cancer}{Cancer}
#'   \item{CancerMetastates}{Metastatic cancer}
#'   \item{HIV}{Human immunodeficiency virus}
#'   \item{HBP}{High blood pressure}
#'   \item{CAD}{Chronic coronary artery disease}
#'   \item{Val_hd}{CValvular heart disease}
#'   \item{charl_i}{Charlson index}
#'   \item{outcome}{Dementia}
#'   \item{Follow_up}{Follow up time in days}
#'   \item{PepticDisease}{Peptic ulcer disease}
#'   \item{Rx}{Discharge medication, amiodarone or dronedarone}
#'   \item{ACE}{Angiotensin-converting-enzyme inhibitors }
#'   \item{ARB}{Angiotensin II receptor blockers}
#'   \item{HIV}{Human immunodeficiency virus}
#'   \item{Statins}{Statins}
#'   \item{post_coag}{Anticoagulation on discharge}
#'   \item{DM}{Diabetes}
#'   \item{LiverDisease}{Liver disease}
#'   \item{cva}{Cerebral vascular disease}
#'   \item{pre_coag}{Anticoagulation on admission}
#'   \item{score}{CHADS-VASC score on admission}
#'
#' }
#' @source {Brophy JM https://www.cjcopen.ca/article/S2589-790X(22)00202-5/fulltext?dgcid=raven_jbs_etoc_email}
"DA"

