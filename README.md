[![Travis build status](https://travis-ci.org/yonicd/rtravis.svg?branch=master)](https://travis-ci.org/yonicd/rtravis)
[![Coverage status](https://codecov.io/gh/yonicd/rtravis/branch/master/graph/badge.svg)](https://codecov.io/github/yonicd/rtravis?branch=master)
# rtravis

weird roxygen2 bug

  - exported function named `travis_encrypt` is flagged as undocumented code objects
  
```
==> devtools::check()

Updating rtravis documentation
Loading rtravis
Writing NAMESPACE
Writing NAMESPACE
Setting env vars --------------------------------------------------------------
CFLAGS  : -Wall -pedantic
CXXFLAGS: -Wall -pedantic
Building rtravis --------------------------------------------------------------
'/Library/Frameworks/R.framework/Resources/bin/R' --no-site-file --no-environ  \
  --no-save --no-restore --quiet CMD build  \
  '/Users/jonathans/projects/rtravis' --no-resave-data --no-manual 

* checking for file ‘/Users/jonathans/projects/rtravis/DESCRIPTION’ ... OK
* preparing ‘rtravis’:
* checking DESCRIPTION meta-information ... OK
* checking for LF line-endings in source and make files
* checking for empty or unneeded directories
Removed empty directory ‘rtravis/data’
* building ‘rtravis_0.0.0.9000.tar.gz’

Setting env vars --------------------------------------------------------------
_R_CHECK_CRAN_INCOMING_ : FALSE
_R_CHECK_FORCE_SUGGESTS_: FALSE
Checking rtravis --------------------------------------------------------------
'/Library/Frameworks/R.framework/Resources/bin/R' --no-site-file --no-environ  \
  --no-save --no-restore --quiet CMD check  \
  '/var/folders/4_/xhs9__yd49l4v4j4wdg9f0wr0000gp/T//RtmpoHM8TD/rtravis_0.0.0.9000.tar.gz'  \
  --as-cran --timings --no-manual 

* using log directory ‘/Users/jonathans/projects/rtravis.Rcheck’
* using R version 3.3.3 (2017-03-06)
* using platform: x86_64-apple-darwin13.4.0 (64-bit)
* using session charset: UTF-8
* using options ‘--no-manual --as-cran’
* checking for file ‘rtravis/DESCRIPTION’ ... OK
* this is package ‘rtravis’ version ‘0.0.0.9000’
* package encoding: UTF-8
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for executable files ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking for sufficient/correct file permissions ... OK
* checking whether package ‘rtravis’ can be installed ... OK
* checking installed package size ... OK
* checking package directory ... OK
* checking DESCRIPTION meta-information ... OK
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking R files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... OK
* checking whether the package can be loaded with stated dependencies ... OK
* checking whether the package can be unloaded cleanly ... OK
* checking whether the namespace can be loaded with stated dependencies ... OK
* checking whether the namespace can be unloaded cleanly ... OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... OK
* checking Rd files ... OK
* checking Rd metadata ... OK
* checking Rd line widths ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘travis_encrypt’
All user-level objects in a package should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking examples ... OK
* checking for unstated dependencies in ‘tests’ ... OK
* checking tests ...
  Running ‘testthat.R’ OK
* DONE
Status: 1 WARNING


See
  ‘/Users/jonathans/projects/rtravis.Rcheck/00check.log’
for details.


checking for missing documentation entries ... WARNING
Undocumented code objects:
  ‘travis_encrypt’
All user-level objects in a package should have documentation entries.
See chapter ‘Writing R documentation files’ in the ‘Writing R
Extensions’ manual.
R CMD check results
0 errors | 1 warning  | 0 notes

R CMD check succeeded
```