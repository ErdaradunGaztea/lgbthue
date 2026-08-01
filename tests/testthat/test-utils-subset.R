# [.lgbtq_palette_list ---------------------------------------------------------
test_that("returns an lgbtq_palette_list", {
  expect_s3_class(
    .pride[4],
    "lgbtq_palette_list"
  )
})

test_that("returns correct elements", {
  idx <- c(1L, 4L, 5L, 8L)
  out <- .pride[idx]
  expected <- unclass(.pride)[idx]

  purrr::walk2(out, expected, \(el_out, el_expected) {
    expect_identical(el_out, el_expected)
  })
})

test_that("passing no index returns the original list", {
  expect_identical(
    .pride[],
    .pride
  )
})

test_that("passing empty index returns an empty lgbtq_palette_list", {
  expect_length(.pride[integer()], 0)
  expect_s3_class(
    .pride[integer()],
    "lgbtq_palette_list"
  )
})
