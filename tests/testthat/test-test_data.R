library(testthat)
library(teads)

context("Dataset size and length")

test_that("warming dataset has the correct size", {
  expect_equal(nrow(warming), 1644)
  expect_equal(ncol(warming), 5)
})

test_that("malaria dataset has the correct size", {
  expect_equal(nrow(malaria), 30780)
  expect_equal(ncol(warming), 5)
})

test_that("Anscobe dataset has the correct size", {
  expect_equal(nrow(Anscombe), 44)
  expect_equal(ncol(Anscombe), 3)
})
