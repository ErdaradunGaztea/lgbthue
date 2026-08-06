#' Stylize text in LGBTQ colors
#'
#' @description
#' Colors the supplied text according to the order of colors on the flag
#' corresponding to the selected palette.
#'
#' @param text `character() | cli_ansi_string()`\cr
#'  A character vector to paint over.
#' @param palette `character(1)`\cr
#'  One of the available palettes to use.
#' @param ... \cr
#'  These dots are for future extensions and must be empty.
#' @param .style `character(1)`\cr
#'  The manner in which the colors are applied.
#'
#' @return A CLI ANSI string vector with colors applied, everything else
#' remaining intact (vector length, string contents, etc.).
#'
#' @examples
#' string_lgbtq(
#'   "This message was brought to you by Big Gay",
#'   "gay"
#' )
#'
#' @export
text_lgbtq <- function(
  text, palette, ...,
  .style = c("stripe", "cycle_char", "cycle_word")
) {
  UseMethod("text_lgbtq")
}

#' @rdname text_lgbtq
#' @export
text_lgbtq.character <- function(
  text, palette, ...,
  .style = c("stripe", "cycle_char", "cycle_word")
) {
  ellipsis::check_dots_empty()

  .style <- match.arg(.style)
  # checkmate::assert_character(text)
  # TODO: Allow passing lgbtq_palette and lgbtq_sequence
  checkmate::assert_string(palette)

  palette <- seq(lgbthue::palette_lgbtq(palette))

  if (length(text) == 0) {
    return(cli::ansi_string(text))
  }

  coords <- make_coords(text, palette, .style)

  out <- vapply(seq_along(coords), function(j) {
    coords <- coords[[j]]
    text <- text[[j]]

    Reduce(function(out, i) {
      color <- palette[[coords[[i, "palette"]]]]
      start <- coords[[i, "start"]]
      end <- coords[[i, "end"]]
      paste0(out, cli::make_ansi_style(color)(cli::ansi_substr(text, start, end)))
    }, seq_len(nrow(coords)), init = "")
  }, character(1))

  cli::ansi_string(out)
}

#' @rdname text_lgbtq
#' @export
text_lgbtq.cli_ansi_string <- function(
    text, palette, ...,
    .style = c("stripe", "cycle_char", "cycle_word")
) {
  text <- cli::ansi_strip(text, csi = FALSE, link = FALSE)

  text_lgbtq(text, palette, ..., .style = .style)
}

make_coords <- function(text, palette, .style) {
  coords_func <- switch(
    .style,
    "stripe" = make_stripe_coords,
    "cycle_char" = make_cycle_char_coords
  )
  lapply(text, function(string) { coords_func(string, palette) })
}

make_stripe_coords <- function(string, palette) {
  n <- length(palette)
  ends <- round((cli::ansi_nchar(string) / n) * seq_len(n))
  starts <- c(1L, ends[-length(ends)] + 1L)

  data.frame(
    start = as.integer(starts),
    end = as.integer(ends),
    palette = seq_len(n)
  )
}

make_cycle_char_coords <- function(string, palette) {
  n <- length(palette)
  nchar <- cli::ansi_nchar(string)

  data.frame(
    start = seq_len(nchar),
    end = seq_len(nchar),
    palette = rep_len(seq_len(n), nchar)
  )
}
