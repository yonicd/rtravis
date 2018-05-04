install.packages('testthat')

devtools::install_github('yonicd/covrpage')

devtools::install()

library(covrpage)
covrpage::covrpage(pkg = '.',preview = FALSE)
