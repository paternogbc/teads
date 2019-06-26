## code to prepare `anscombe` dataset goes here
## Source: the R Package datasets
raw <- datasets::anscombe

### Make data tidy----
Anscombe <-
  data.frame(
  quartet = rep(
    c("1th", "2th", "3th", "4th"),
  each = length(raw[["x1"]])
  ),
  x = c(
    raw[["x1"]], raw[["x2"]], raw[["x3"]], raw[["x4"]]
    ),
  y = c(
    raw[["y1"]],raw[["y2"]], raw[["y3"]], raw[["y4"]])
  )
usethis::use_data(Anscombe, overwrite = TRUE)

library(ggplot2)
library(dplyr)
library(purrr)
library(broom)

# model fits (Quite similar results)
fit1 <- lm(y ~ x, filter(Anscombe, quartet == "1th"))
fit2 <- lm(y ~ x, filter(Anscombe, quartet == "2th"))
fit3 <- lm(y ~ x, filter(Anscombe, quartet == "3th"))
fit4 <- lm(y ~ x, filter(Anscombe, quartet == "4th"))
fits <- list(fit1, fit2, fit3, fit4)
purrr::map_df(fits, broom::tidy, .id = "model")

# Visualization (quite contrasting graphs!)
ggplot(Anscombe, aes(y = y, x = x)) +
  geom_point() +
  geom_smooth(method = lm, se = F) +
  facet_wrap(~quartet, scales = "free")


