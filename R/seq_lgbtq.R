#' @export
seq.lgbtq_palette <- function(x) {
  as.character(x)
}

#' @export
seq.lgbtq_palette_hflag_symmetrical <- function(x) {
  x <- as.character(x)
  c(x, rev(x)[-1])
}

#' @export
seq.lgbtq_palette_hflag_outer <- function(x) {
  x <- as.character(x)
  c(x[1], x, x[length(x)])
}

# TODO: Add docs
