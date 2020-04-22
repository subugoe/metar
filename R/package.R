#' Set up package
#'
#' @inherit usethis::create_package
#' @param name `[character(1)]` giving the package name and path
#' @inheritParams usethis::use_github
#' @family setup helpers
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
  usethis::ui_todo(x = "Edit the {usethis::ui_code('DESCRIPTION')}.")
  usethis::edit_file("DESCRIPTION")

  use_pkgdown2()

  usethis::use_spell_check()

  usethis::use_package_doc()
  usethis::use_roxygen_md()

  usethis::use_readme_md()
  usethis::ui_todo(x = "Edit the {usethis::ui_code('README.md')}.")
  usethis::edit_file("README.md")
}

#' @rdname create_package2
#' @family setup helpers
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
  use_pkgdown2()
  usethis::use_git()
  usethis::use_github(
    protocol = "https",
    organisation = "subugoe"
  )
  use_github_actions2()
  reposlug <- paste("subugoe", name, sep = "/")
  use_codecov2(reposlug = reposlug)
  use_ghpages(name = name)
}

#' Set up pkgdown
#'
#' @inherit usethis::use_pkgdown
#' @family setup helpers
#' @export
use_pkgdown2 <- function(config_file = "pkgdown/_pkgdown.yml") {
  fs::dir_create("pkgdown")
  usethis::use_pkgdown(config_file = config_file)
  usethis::use_package(
    package = "pkgdown",
    type = "Suggests",
    min_version = TRUE
  )
  usethis::use_git_ignore(ignores = "docs/")
}

#' Set up github actions
#' @family setup helpers
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

#' Set up codecov
#' @param reposlug `[character(1)]` giving the `username/repo` URL slug of the project.
#' @family setup helpers
#' @export
use_codecov2 <- function(reposlug) {
  usethis::use_coverage(type = "codecov")
  usethis::ui_todo(
    "Add the {usethis::ui_value('Repository Upload Token')} from codecov as a secret called {usethis::ui_value('CODECOV_TOKEN')} on GitHub."
  )
  view_url("https://codecov.io/gh", reposlug, "settings")
  view_url("https://github.com", reposlug, "settings", "secrets")
}

#' Set up GitHub Pages
#' @inheritParams create_package2
#' @family setup helpers
#' @export
use_ghpages <- function(name) {
  usethis::ui_todo(
    "Add a Personal Access Token from GitHub as secret called {usethis::ui_value('GH_PAT_GHPAGES')} on GitHub."
  )
  name <- "shinySurvey"
  usethis::browse_github_pat(
    scopes = "public_repo",
    description = paste("GitHub actions:", name)
  )
  usethis::browse_github_secrets(package = name)
}
