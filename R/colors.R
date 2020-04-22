#' EJD palette
#'
#' Color pallete by [Dr. Emily Jane Dennis](https://twitter.com/emilyjanedennis) as per [this tweet](https://twitter.com/debivort/status/994583058031546369).
#'
#' @examples
#' scales::show_col(ejd_pal()$dark)
#'
#' @details
#' Should be color blind friendly
#'
#' @return
#' A tibble with three colums, all as character strings:
#'
#' 1. `name` (not a "real" color name),
#' 2. the hex code of the `dark` variant and
#' 3. the hex code of the `light` variant.
#'
#' @family corporate identity
#' @export
ejd_pal <- function() {
  tibble::tribble(
    ~name,    ~dark,     ~light,
    "blue",   "#65BADA", "#87D0E2",
    "cyan",   "#068E8C", "#75B3A7",
    "green",  "#00A757", "#82BA4F",
    "yellow", "#E5BA52", "#F3EA1F",
    "orange", "#D86F27", "#E89E23",
    "pink",   "#C82E6B", "#D4668F",
    "red",    "#991B37", "#C30021",
    "violet", "#364285", "#5D5296"
  )
}
