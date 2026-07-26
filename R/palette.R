#' Get one of LGBTQ palettes
#'
#' @description Returns a palette object with colors based on a specified LGBTQ
#' flag. Note: the number of colors vary between palettes!
#'
#' @param name `character(1)` \cr
#'  Name of the flag the colors are based on.
#'
#' @return An `lgbtq_palette` object containing a vector of RGB color codes as strings.
#'
#' @examples
#' palette_lgbtq("bisexual")
#'
#' @export
palette_lgbtq <- function(name) {
  if (!name %in% names(.pride)) {
    stop(sprintf("Palette '%s' not recognized as lgbthue palette.", name), call. = FALSE)
  }

  structure(
    .pride[[name]][["colors"]],
    class = "lgbtq_palette",
    name = name
  )
}

#' @export
print.lgbtq_palette <- function(x, ...,
                                background = getOption("gglgbtq_bg"),
                                font_size = getOption("gglgbtq_font_size")) {
  old <- graphics::par()[c("mar", "bg")]
  on.exit(graphics::par(old))

  graphics::par(
    mar = c(.2, .2, .2, .2),
    bg = "white"
    # bg = background
  )

  n <- length(x)
  graphics::image(
    x = seq_len(n), y = 1, z = as.matrix(seq_len(n)),
    col = x, ylab = "", xaxt = "n", yaxt = "n", bty = "n"
  )
  graphics::rect(
    xleft = 0, ybottom = 0.9, xright = n + 1, ytop = 1.1,
    col = grDevices::rgb(.95, .95, .95, 0.8), border = NA
  )
  graphics::text(
    x = (n + 1) / 2, y = 1,
    labels = attr(x, "name", exact = TRUE), cex = font_size, family = "sans"
  )
}
