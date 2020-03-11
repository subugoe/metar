#' Set up package
#'
#' @inherit usethis::create_package
#' @param name `character[1]` giving the package name and path
#' @inheritParams usethis::use_github
#' @export
create_package2 <- function(name, fields = NULL) {
  usethis::create_package(
    path = name,
    fields = c(
      list(
        Package = name
      ),
      fields
    )
  )
  setwd(name)
  usethis::ui_todo(x = "Edit the `DESCRIPTION`.")
  usethis::edit_file("DESCRIPTION")

  use_pkgdown2()

  usethis::use_spell_check()

  usethis::use_package_doc()
  usethis::use_roxygen_md()

  usethis::use_readme_md()
  usethis::ui_todo(x = "Edit the `README.md`.")
  usethis::edit_file("README.md")
}

#' @rdname create_package2
#' @export
create_package2_sub <- function(name) {
  create_package2(
    name = name,
    fields = list(
      # must be with oe because otherwise ASCI-trouble in RCMD check
      `Authors@R` = 'person("Goettingen State and University Library", role = c("cph", "fnd"))'
    )
  )
  usethis::use_mit_license(name = "Goettingen State and University Library")
  usethis::use_git()
  usethis::use_github(
    protocol = "https",
    organisation = "subugoe"
  )
  use_github_actions2()
  usethis::use_coverage(type = "codecov")
}

#' Set up pkgdown
#'
#' @inherit usethis::use_pkgdown
#' @export
use_pkgdown2 <- function(config_file = "pkgdown/_pkgdown.yml") {
  fs::dir_create("pkgdown")
  usethis::use_pkgdown(config_file = config_file)
  usethis::use_package(
    package = "pkgdown",
    type = "Suggests",
    min_version = TRUE
  )
}

#' Set up github actions
#' @export
use_github_actions2 <- function() {
  # used in below github actions
  usethis::use_package(
    package = "rcmdcheck",
    type = "Suggests",
    min_version = TRUE
  )
  usethis::use_github_actions()
}

