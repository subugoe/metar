#' Browse to URL
#'
#' @details This function is copied from an unexported function in [usethis](https://github.com/r-lib/usethis/blob/23dd62c5e7713ed8ecceae82e6338f795d30ba92/R/helpers.R).
#'
#' @param ... Elements of the URL
#' @param open `[logical(1)]` giving whether the URL should be opened
#'
#' @export
view_url <- function(..., open = interactive()) {
  url <- paste(..., sep = "/")
  if (open) {
    usethis::ui_done("Opening URL {usethis::ui_value(url)}")
    utils::browseURL(url)
  } else {
    usethis::ui_todo("Open URL {usethis::ui_value(url)}")
  }
  invisible(url)
}
