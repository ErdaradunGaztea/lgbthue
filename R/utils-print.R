#' @export
print.lgbtq_palette_data <- function(x, ...) {
  cat(sprintf("%s [%i]\n", x[["name"]], length(x[["colors"]])))

  args <- lapply(x[["colors"]], function(color) {
    sprintf(" %s %s", cli::make_ansi_style(color)("\u2588"), color)
  })
  do.call(cat, c(args, sep = "\n"))

  if (!is.null(x[["tags"]])) {
    cat(
      " ",
      paste(
        sprintf("[%s]", cli::col_blue(x[["tags"]])),
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
