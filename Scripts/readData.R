#' This script will read in raw data from the the Cape Hatteras BRS
#' into 3 data frames. These will be wrangled in a 
#' subsequent analysis
library(readr)
library(dplyr)
kahuna <- read_csv('../data/2018-11-26_2017-Cape-Hatteras-BRS-kahuna-CEE.csv')
gm182UP <- read_csv('../data/2018-11-27_Gm182-UserPoints-Start-CEE-Locations-Kahuna.csv') %>% 
  mutate(status = 'userPoints')
gm182 <- read_csv('../data/2018-11-27_Gm182-Start-CEE-Locations-Kahuna.csv') %>% 
  mutate(status = 'noUserPoints')
  