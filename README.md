# metaR

<!-- badges: start -->
[![R build status](https://github.com/subugoe/metaR/workflows/.github/workflows/main.yaml/badge.svg)](https://github.com//subugoe/metaR/actions)
[![Codecov test coverage](https://codecov.io/gh/subugoe/metaR/branch/master/graph/badge.svg)](https://codecov.io/gh//subugoe/metaR?branch=master)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN status](https://www.r-pkg.org/badges/version/metaR)](https://CRAN.R-project.org/package=metaR)
<!-- badges: end -->

This package is for internal use at [SUB Göttingen](http://sub.uni-goettingen.de).
It is about how we work.

<div class="alert alert-info">
  All of these are suggestions only and should never get in the way of how people prefer to work.
</div>

It provides:

1. Wraps [muggle](http://subugoe.github.io/muggle/) setup functions for R best practices with SUB-specific defaults.
2. Documentation for suggested best practices around R data analysis at SUB in the form of vignettes.
  Most of this is links to other resources.
3. [A place to log placeholder issues for ideas](https://github.com/subugoe/metaR/issues) to improve our workflows with development in other packages, or of new packages.


## Installation

You can install the released version of {metaR} from [GitHub](https://github.com/subugoe/metaR) with:

``` r
remotes::install_github("subugoe/metaR")
```

This package will never go to CRAN, because it is not useful for people outside of SUB.
