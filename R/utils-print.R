#' @export
print.lgbtq_sequence <- function(x, ...) {
  cat(sprintf("%s [seq %i]\n", attr(x, "name", exact = TRUE), length(x)))

  args <- lapply(x, function(color) {
    sprintf(" %s %s", cli::make_ansi_style(color)("\u2588"), color)
  })
  do.call(cat, c(args, sep = "\n"))
}

#' @export
print.lgbtq_palette <- function(x, ...) {
  cat(sprintf("%s [%i]\n", attr(x, "name", exact = TRUE), length(x)))

  args <- lapply(x, function(color) {
    sprintf(" %s %s", cli::make_ansi_style(color)("\u2588"), color)
  })
  do.call(cat, c(args, sep = "\n"))

  if (!is.null(attr(x, "tags", exact = TRUE))) {
    cat(
      " ",
      paste(
        sprintf("[%s]", cli::col_blue(attr(x, "tags", exact = TRUE))),
        collapse = ", "
      ),
      "\n",
      sep = ""
    )
  }
}

#' @export
print.lgbtq_palette_list <- function(x, ...) {
  for (palette in x) {
    print(palette)
    cat("\n")
  }
}
