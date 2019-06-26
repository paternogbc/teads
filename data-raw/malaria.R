## code to prepare `malaria` dataset
library(tidyverse)
library(RCurl)

### Download source: https://github.com/rfordatascience/tidytuesday/tree/master/data/2018/2018-11-13
raw <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2018/2018-11-13/malaria_deaths_age.csv")

# process raw data and save clean dataset
malaria <- raw %>%
  select(-X1,
         country = entity)
usethis::use_data(malaria, overwrite = TRUE)
