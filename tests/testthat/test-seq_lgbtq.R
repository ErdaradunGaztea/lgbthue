test_that("returns a character vector", {
  for (name in names(.pride)) {
    checkmate::expect_character(
      seq(palette_lgbtq(name)),
      min.len = 2
    )
  }
})

test_that("most palettes return themselves", {
  expect_identical(
    seq(palette_lgbtq("rainbow")),
    as.character(palette_lgbtq("rainbow"))
  )
})

test_that("symmetrical palettes return symmetrical results", {
  expect_identical(
    seq(palette_lgbtq("transgender")),
    rev(seq(palette_lgbtq("transgender")))
  )
})

test_that("outer-thick palettes return duplicated first and last colors", {
  out <- seq(palette_lgbtq("bisexual"))
  expect_identical(out[1L], out[2L])
  expect_identical(out[length(out)], out[length(out) - 1L])
})
