#' State- and University Library of Göttingen [pkgdown](http://pkgdown.r-lib.org) template
#'
#' @name subugoe_template
#'
#' @details
#' To use this template for website, list {metaR} in your `DESCRIPTION` and add to your `_pkgdown.yml`:
#'
#' ```yaml
#' template:
#'   package: metaR
#' ````
#'
#' As a result, your website will:
#'
#' - Use the [bootswatch `cosmo` bootstrap theme](https://bootswatch.com/3/cosmo/).
#' - Set the navbar to `type: inverse`.
#' - Display in a University of Göttingen **color scheme**.
#'    This is determined by the `ugoe_bootswatch.css`, which is compiled from `ugoe_colors.less`.
#'    The colors were added and downloaded via https://www.bootstrap-live-customizer.com.
#' - Include the SUB wordmark in your website as `sub_wordmark.jpg`.
#' - Add a custom footer including the wordmar.
#'
#' To pull in changes in this package to your website, install the current version of {metaR} and re-run `pkgdown::build_site()` locally or in your CI.
#' To pull in upstream changes from {pkgdown} into *this* package, it may be ocassionally necessary to update the files in `inst/pkgdown/templates` which have been minimally adapted from their original counterparts in {pkgdown}.
#'
#' To learn more about pkgdown templates, read [here](https://pkgdown.r-lib.org/reference/build_site.html) or consider [these](https://github.com/ropensci/rotemplate) [examples](https://tidytemplate.tidyverse.org).
#'
#' @family corporate identity
NULL
