library(testthat)
library(rtravis)

testthat::test_that('a test',{

  testthat::expect_equal(func(2,2),4)
  
})