#' @export
`[.lgbtq_palette_list` <- function(x, ...) {
  out <- NextMethod()
  class(out) <- class(x)
  out
}
