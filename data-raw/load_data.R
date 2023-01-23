library(tidyverse)
library(readr)
library(here)
library(IPDfromKM)
DA <- read_csv("data-raw/dat_DA.csv") %>%
  filter(Rx %in% c("Amio", "Dronedarone"))
DA$Rx <- factor(DA$Rx, levels = c("Amio", "Dronedarone"),
                 labels = c("Amiodarone", "Dronedarone"))
Challeng <- read_csv("data-raw/Challeng.csv", show_col_types = FALSE) %>%
  mutate(erosion=ifelse(temp==53,2,1)) %>%
  mutate(date= c("4/12/81", "11/12/81", "3/22/82",  "11/11/82", "4/4/83",   "6/18/83",  "8/30/83",  "11/28/83", "2/3/84",   "4/6/84",
                 "8/30/84",  "10/5/84",  "11/8/84", "1/24/85",  "4/12/85",  "4/29/85",  "6/17/85",  "7/29/85",  "8/27/85",  "10/3/85",
                 "10/30/85", "11/26/85", "1/12/86"))
n = ncol(Challeng)
new.order = c(n, 1:(n-1))
Challeng = Challeng[, new.order]
cannabis  <- read_csv("data-raw/cannabis.csv") %>%
  select(-c(5:8,31,33))
victim  <- read_csv("data-raw/victim.csv")
victim$race <- factor(victim$race)
village_randomized <- read_csv("data-raw/village_randomized.csv")
chic <- read_csv("data-raw/chic.csv")
diabetes <- read_csv("data-raw/diabetes.csv")
trop_long_na <- read_csv("data-raw/trop.long.na.csv")
trop <- trop_long_na %>%
  select(c(1:4,8,20,33,34))
i <- which(trop$cTnT == 3)
trop$cTnT[i] <- runif(i, 0, 3)
trop <- trop %>% mutate(creat = case_when( pt.id== 1 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 2  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 3  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 4 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 5 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 6  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 7  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 8 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 9 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 10 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 11 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 12  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 13  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 14 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 15 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 16 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 17 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 18  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 19  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 20 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 21 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 22  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 23  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 24 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 25 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 26 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 27 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 28  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 29  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 30 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 31 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 32  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 33  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 34 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 35 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 36 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 37 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 38  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 39  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 40 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 51 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 52  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 53  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 54 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 55 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 56 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 57 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 58  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 59  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 60 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 41 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 42  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 43  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 44 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 45 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 46 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 47 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 48  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 49  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 50 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 61 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 62  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 63  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 64 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 65 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 66 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 67 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 68  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 69  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 70 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 71 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 72  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 73  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 74 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 75 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 76 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 77 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 78  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 79  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 80 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 81 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 82  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 83  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 84 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 85 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 86 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 87 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 88  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 89  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 90 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 91 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 92  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 93  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 94 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 95 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 96 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 97 ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 98  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 99  ~ rnorm(1491, Labo_Creatinine,5),
                                          pt.id== 100 ~ rnorm(1491, Labo_Creatinine,5),
                                  TRUE ~ 0))

trop <- trop %>%
  mutate( creat = ifelse(time==1, Labo_Creatinine, creat)) %>%
  select(-Labo_Creatinine)
#pace dataset looking at 4 years
no_pace <- read.csv("data-raw/no_pacemaker_four_years_km.csv", header= TRUE)
pace <- read.csv("data-raw/pacemaker_four_years_km.csv", header= TRUE)
np <- c(480,340,166) # number at risk for no_pace
p <- c(480,330,167) # number at risk for pace
t_risk <- c(0,2,4) # X axis tick labels
pre_no_pace <- IPDfromKM::preprocess(dat=no_pace, trisk=t_risk, nrisk=np,maxy=100)
pre_pace <- IPDfromKM::preprocess(dat=pace, trisk=t_risk, nrisk=p,maxy=100)
ipd_no_pace <- IPDfromKM::getIPD(prep=pre_no_pace, armID=0, # treat = 0
                                 tot.events=NULL)
ipd_pace <- IPDfromKM::getIPD(prep=pre_pace,armID=1, # treat = 1
                              tot.events=NULL)
pace <-  dplyr::bind_rows(ipd_pace$IPD, ipd_no_pace$IPD) %>%
  dplyr::mutate(treat = dplyr::case_when(
    treat == 0 ~ "No pacemaker",
    treat == 1 ~ "Pacemaker"),
    treat = as.factor(treat))
usethis::use_data(pace, DA, Challeng, cannabis, chic, victim, village_randomized, diabetes, trop, overwrite = TRUE)



