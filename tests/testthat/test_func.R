library(testthat)
library(rtravis)

context('test')

testthat::test_that('a test',{

  path <- tempfile(pattern = 'myfile',fileext = '.txt')
  
  cat('this is a test',file = path,sep='\n')
  
  expect_equal(readLines(path),'this is a test')
  
})