#' List available palettes
#'
#' @description Shows the names of available LGBTQ palettes and their metadata.
#'
#' @return An `lgbtq_palette_list` with matching palettes.
#'
#' @examples
#' show_pride()
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
