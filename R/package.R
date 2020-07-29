#' Create [muggle](http://subugoe.github.io/muggle/) package with SUB defaults
#'
#' @inherit muggle::create_muggle_package
#'
#' @inheritDotParams muggle::create_muggle_package
#'
#' @family setup helpers
#' @export
create_muggle_package_sub <- function(...) {
  org <- c(subugoe = "G\u00f6ttingen State and University Library")
  muggle::create_muggle_package(
    license_holder = org,
    organisation = names(org),
    ...
  )
}
