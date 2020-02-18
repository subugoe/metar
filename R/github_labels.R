#' Set WAG default issue labels
#'
#' Wraps to [usethis::use_github_labels()] to add WAG default labels to GitHub defaults.
#'
#' @export
#'
#' @examples
#' # these labels are added
#' wag_labels()
#'
#' # just run this to set up labels in your current repo
#' \dontrun{
#' use_wag_labels()
#' }
use_wag_labels <- function() {
  usethis::use_github_labels(
    labels = wag_labels()$name,
    colours = wag_label_colours,
    descriptions = wag_label_descriptions,
    delete_default = FALSE
  )
}

#' @rdname use_wag_labels
#' @export
wag_labels <- function() {
  tibble::tribble(
    ~name, ~colour, ~description,
    "needs-votes :thumbsup: ", "bfe9fc", "Please upvote, if this is worthwhile",
    "placeholder :arrow_up: ", "cfffb2", "Work lives in another org"
  )
}

wag_label_colours <- wag_labels()$colour
names(wag_label_colours) <- wag_labels()$name

wag_label_descriptions <- wag_labels()$description
names(wag_label_descriptions) <- wag_labels()$name
