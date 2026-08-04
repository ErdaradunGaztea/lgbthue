#' Generate colour sequence from a palette
#'
#' @description
#' Transforms a palette into a sequence of colours corresponding to the order
#' of those colours on the corresponding flag.
#'
#' @param x `lgbtq_palette()`\cr
#'  Palette to generate sequence from.
#'
#' @return A character vector of colours in flag order.
#'
#' @export
seq.lgbtq_palette <- function(x) {
  as.character(x)
}

#' @rdname seq.lgbtq_palette
#' @export
seq.lgbtq_palette_hflag_symmetrical <- function(x) {
  x <- as.character(x)
  c(x, rev(x)[-1])
}

#' @rdname seq.lgbtq_palette
#' @export
seq.lgbtq_palette_hflag_outer <- function(x) {
  x <- as.character(x)
  c(x[1], x, x[length(x)])
}

# TODO: Think about an `lgbtq_sequence` class
