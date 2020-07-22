#' Create [muggle](http://subugoe.github.io/muggle/) project with SUB defaults
#'
#' @inherit muggle::create_muggle
#'
#' @inheritDotParams muggle::create_muggle
#'
#' @family setup helpers
#' @export
create_muggle_sub <- function(...) {
  org <- c(subugoe = "G\u00f6ttingen State and University Library")
  muggle::create_muggle(
    license_holder = org,
    organisation = names(org),
    ...
  )
}
