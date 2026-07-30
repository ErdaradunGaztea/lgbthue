#' @export
plot.lgbtq_palette <- function(x, ...,
                               background = getOption("gglgbtq_bg", default = "white"),
                               font_size = getOption("gglgbtq_font_size", default = 2.5)) {
  old <- graphics::par()[c("mar", "bg")]
  on.exit(graphics::par(old))

  graphics::par(
    mar = c(.2, .2, .2, .2),
    bg = background
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
