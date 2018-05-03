print(getwd())

install.packages(c('testthat','covr'))
devtools::install_github('yonicd/covrpage')

row.names(installed.packages())

covrpage::covrpage(pkg = '.', preview = FALSE)
