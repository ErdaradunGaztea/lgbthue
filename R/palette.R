#' Get one of LGBTQ palettes
#'
#' @description Returns a palette object with colors based on a specified LGBTQ
#' flag. Note: the number of colors vary between palettes!
#'
#' @param name `character(1)` \cr
#'  Name of the flag the colors are based on.
#'
#' @return An `lgbtq_palette` object containing a vector of RGB color codes as strings.
#'
#' @examples
#' palette_lgbtq("bisexual")
#'
#' @export
palette_lgbtq <- function(name) {
  checkmate::assert_string(name)

  if (!name %in% names(.pride_alias_dict)) {
    # TODO: Add mention of `show_pride()`
    stop(sprintf("Palette '%s' not recognized as lgbthue palette.", name), call. = FALSE)
  }

  .pride[[.pride_alias_dict[[name]]]]
}
