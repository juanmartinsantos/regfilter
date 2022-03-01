<!-- [![R-CMD-check](https://github.com/topepo/caret/workflows/R-CMD-check/badge.svg)](https://github.com/topepo/caret/actions) -->
<!-- [![Coverage Status](https://coveralls.io/repos/topepo/caret/badge.svg?branch=master)](https://coveralls.io/r/topepo/caret?branch=master) -->
<!-- [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/caret)](http://cran.r-project.org/web/packages/caret) -->
  
# regfilter (Regresand Noise filters)

This package adapts classic and recent filtering techniques to be used in regression problems. To do this, it uses the approach proposed in [Martin et al. (2021)](https://ieeexplore.ieee.org/document/9585469). Thus, the goal of the implemented noise filters is to eliminate samples with noise in regression datasets.

## Install the current release from CRAN:
```r
install.packages('regfilter')
```

## Install the development version from GitHub:
```r
install.packages("devtools")
library(devtools)

install_github("juanmartinsantos/regfilter/pkg/regfilter")
```
