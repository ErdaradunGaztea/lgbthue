#' List available palettes
#'
#' @description Shows the available LGBTQ palettes, possibly filtered by tags and/or size.
#'
#' @param ... \cr
#'  These dots are for future extensions and must be empty.
#' @param tags `character()` \cr
#'  Tags to filter by; currently available:
#'  `"rainbow"`, `"sexuality"`, `"gender"`, `"subculture"`, `"a-spec"`, `"galactian"`.
#' @param sizes `integer()` \cr
#'  Palette sizes to require.
#'
#' @return An `lgbtq_palette_list` with matching palettes.
#'
#' @examples
#' # By default, all palettes are shown
#' show_pride()
#'
#' # To find rainbow palettes of sizes 6 and 8:
#' show_pride(tags = "rainbow", sizes = c(6, 8))
#'
#' @export
show_pride <- function(..., tags = NULL, sizes = NULL) {
  ellipsis::check_dots_empty()
  checkmate::assert_character(tags, any.missing = FALSE, null.ok = TRUE)
  checkmate::assert_integerish(sizes, lower = 1L, any.missing = FALSE, null.ok = TRUE)

  valid <- names(.pride)

  if (!is.null(tags)) {
    valid <- intersect(valid, unlist(.pride_tag_dict[tags], use.names = FALSE))
  }

  if (!is.null(sizes)) {
    valid <- intersect(valid, unlist(.pride_size_dict[as.character(sizes)], use.names = FALSE))
  }

  .pride[valid]
}
