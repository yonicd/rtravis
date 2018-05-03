install.packages(c('testthat','covr'))
devtools::install_github('yonicd/covrpage')
covrpage::covrpage(pkg = '.', preview = FALSE)

