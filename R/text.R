#' Stylize text in LGBTQ colors
#'
#' @export
text_lgbtq <- function(text, .palette = "rainbow", .style = c("stripe", "cycle_char", "cycle_word")) {
  .style <- match.arg(.style)
  .palette <- lgbthue::palette_lgbtq(.palette)

  n <- length(.palette)
  ends <- round((nchar(text) / n) * seq_len(n))
  starts <- c(1L, ends[-length(ends)] + 1L)

  out <- Reduce(\(out, i) {
    color <- .palette[[i]]
    start <- starts[[i]]
    end <- ends[[i]]
    paste0(out, cli::make_ansi_style(color)(substr(text, start, end)))
  }, seq_along(.palette), init = "")

  cli::ansi_string(out)
}
