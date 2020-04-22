#' EJD palette
#'
#' Color pallete by [Dr. Emily Jane Dennis](https://twitter.com/emilyjanedennis) as per [this tweet](https://twitter.com/debivort/status/994583058031546369).
#'
#' @examples
#' purrr::walk(.x = ejd_pal()[-1], .f = scales::show_col)
#'
#' @details
#' Should be color blind friendly
#'
#' @return
#' A tibble with three colums, all as character vectors of hex color values:
#'
#' 1. `name` (not a "real" color name),
#' 2. the `dark` variant and
#' 3. the `light` variant.
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


#' University of Göttingen palette
#'
#' Color pallete used at the [Georg August University of Göttingen](https://www.uni-goettingen.de) as per [these guidelines](https://www.uni-goettingen.de/de/589412.html).
#'
#' @examples
#' purrr::walk(.x = ugoe_pal(), .f = scales::show_col)
#'
#' @return
#' A list of three elements, all character vectors of hex color values, named by their official name as per the above source:
#'
#' 1. `primary` colors,
#' 2. `secondary` colors and
#' 3. `faculty` for the colors of the different schools.
#'
#' @family corporate identity
#' @export
ugoe_pal <- function() {
  list(
    primary = c(
      `Uni-Blau (HKS 41)` = "#153268",
      Hellblau = "#BCCDE2",
      Weiss = "#FFFFFF",
      Schwarz = "#000000"
    ),
    secondary = c(
      Dunkelblau = "#006597",
      Mittelblau = "#0093c7",
      Himmelblau = "#84BFEA",
      Chamois = "#E9E1D7",
      Altweiss = "#F6F4F0",
      `Grau 90` = "#3b3b3a",
      `Grau 80` = "#575656",
      `Grau 60` = "#878786",
      `Grau 20` = "#D9DADA",
      `Grau 10` = "#ECECED"
    ),
    faculty = c(
      Agrarwissenschaften = "#25795D",
      `Biologie und Psychologie` = "#FD8F4A",
      Chemie = "#EEB32A",
      `Forstwissenschaften und Waldoekologie` = "#256951",
      `Geowissenschaften und Geographie` = "#AC5B53",
      `Mathematik und Informatik` = "#E07F41",
      Physik = "#FDA642",
      Jura = "#C70D2D",
      Sozialwissenschaften = "#B52141",
      Wirtschaftswissenschaften = "#2B7AB3",
      `Philosophische Fakultaet` = "#454545",
      `Universitaetsmedizin` = "#153268"
    )
  )
}
