install.packages('testthat')
devtools::install_github('yonicd/covrpage')

row.names(installed.packages())

devtools::install()

library(covrpage)
covrpage::covrpage(pkg = '.',preview = FALSE)
