# Script to prepare table with datasets names and types
examples <-
  tibble(
    name  = c("Anscombe", "malaria", "warming"),
    topic = c("simulated", "social", "environmental"),

    type   = c("regression", "time series", "time series"),
    geo    = c("no", "yes", "no"),
    n_rows   = c(nrow(Anscombe), nrow(malaria), nrow(warming))
  )
examples
