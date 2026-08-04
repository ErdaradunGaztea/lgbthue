test_that("returns a character vector", {
  for (name in names(.pride)) {
    out <- seq(palette_lgbtq(name))
    checkmate::expect_character(out, min.len = 2)
    expect_s3_class(out, "lgbtq_sequence")
  }
})

test_that("has `name` attribute", {
  for (name in names(.pride)) {
    out <- seq(palette_lgbtq(name))
    out_name <- attr(out, "name", exact = TRUE)

    checkmate::expect_string(out_name)
    expect_identical(out_name, name)
  }
})

test_that("most palettes return themselves", {
  lgbtq_palette <- palette_lgbtq("rainbow")
  expect_identical(
    as.character(seq(lgbtq_palette)),
    as.character(lgbtq_palette)
  )
})

test_that("symmetrical palettes return symmetrical results", {
  lgbtq_seq <- seq(palette_lgbtq("transgender"))
  expect_identical(
    as.character(lgbtq_seq),
    as.character(rev(lgbtq_seq))
  )
})

test_that("outer-thick palettes return duplicated first and last colors", {
  out <- seq(palette_lgbtq("bisexual"))
  expect_identical(out[1L], out[2L])
  expect_identical(out[length(out)], out[length(out) - 1L])
})
