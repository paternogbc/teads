## code to prepare `warming` dataset
library(tidyverse)
library(RCurl)

# Description:
# Monthly mean temperature anomalies in degrees Celsius relative to a base period.
# GISTEMP base period: 1951-1980.
# GCAG base period: 20th century average.
# Data source & details: https://data.giss.nasa.gov/gistemp/
# Download Source: https://datahub.io/core/global-temp#data
url  <- "https://datahub.io/core/global-temp/r/monthly.csv"
raw  <- read_csv(url)

# process raw data and save clean dataset
warming <- raw %>%
  rename(temp = Mean,
         source = Source,
         date = Date) %>%
  dplyr::filter(source == "GISTEMP") %>%
  dplyr::mutate(year = lubridate::year(date),
                month = lubridate::month(date),
                day = lubridate::day(date)) %>%
  select(source, year, month, day, temp)

usethis::use_data(warming, overwrite = TRUE)
