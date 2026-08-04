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
  new_lgbtq_sequence(
    as.character(x),
    attr(x, "name", exact = TRUE)
  )
}

#' @rdname seq.lgbtq_palette
#' @export
seq.lgbtq_palette_hflag_symmetrical <- function(x) {
  x_chr <- as.character(x)

  new_lgbtq_sequence(
    c(x_chr, rev(x_chr)[-1]),
    attr(x, "name", exact = TRUE)
  )
}

#' @rdname seq.lgbtq_palette
#' @export
seq.lgbtq_palette_hflag_outer <- function(x) {
  x_chr <- as.character(x)

  new_lgbtq_sequence(
    c(x_chr[1], x_chr, x_chr[length(x_chr)]),
    attr(x, "name", exact = TRUE)
  )
}

new_lgbtq_sequence <- function(colors, name) {
  structure(
    colors,
    name = name,
    class = "lgbtq_sequence"
  )
}
