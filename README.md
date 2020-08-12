# metar

<!-- badges: start -->
[![R build status](https://github.com/subugoe/metar/workflows/.github/workflows/main.yaml/badge.svg)](https://github.com//subugoe/metar/actions)
[![Codecov test coverage](https://codecov.io/gh/subugoe/metar/branch/master/graph/badge.svg)](https://codecov.io/gh//subugoe/metar?branch=master)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN status](https://www.r-pkg.org/badges/version/metar)](https://CRAN.R-project.org/package=metar)
<!-- badges: end -->

This package is for internal use at [SUB Göttingen](http://sub.uni-goettingen.de).
It:

1. Wraps [muggle](http://subugoe.github.io/muggle/) setup functions for R best practices with SUB-specific defaults.
2. Documents suggested best practices around R data analysis at SUB in the form of vignettes.
  Most of this is links to other resources.
3. [A place to log placeholder issues for ideas](https://github.com/subugoe/metar/issues) to improve our workflows with development in other packages, or of new packages.

This package will never go to CRAN, because it is not useful for people outside of SUB.

<div class="alert alert-warning">
  {metar} re-exports functions from existing packages, and therefore has a lot of heavy dependencies (much like [devtools](https://github.com/r-lib/devtools)).
  It is for interactive use *only*; do not add it to your `DESCRIPTION`.
</div>

If you need one of the {metar} functions in your project, look for package from which the function originated, and add that to your `DESCRIPTION` instead.
It will be much lighter.
For example, to use the pkgdown theme wrapped in {metar}, you only need the [subugoetheme](https://github.com/subugoe/subugoetheme) package.
