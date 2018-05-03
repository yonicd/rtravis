library(testthat)
library(rtravis)

testthat::test_that('a test',{
  expect_equal(func(2,2),4)
})