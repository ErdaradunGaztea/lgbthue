# palette_lgbtq() --------------------------------------------------------------
## Output ----
test_that("returns a palette", {
  for (name in names(.pride)) {
    expect_s3_class(
      palette_lgbtq(name),
      "lgbtq_palette"
    )
  }
})

test_that("returns a character vector of length at least 2", {
  for (name in names(.pride)) {
    checkmate::expect_character(palette_lgbtq(name), min.len = 2)
  }
})

test_that("all elements are RGB color codes", {
  for (name in names(.pride)) {
    expect_match(
      palette_lgbtq(name),
      "#[ABCDEF0-9]{6}",
      perl = TRUE, ignore.case = TRUE
    )
  }
})

test_that("palettes have single-string names", {
  for (name in names(.pride)) {
    expect_vector(
      attr(palette_lgbtq(name), "name", exact = TRUE),
      ptype = character(),
      size = 1
    )
  }
})

## Input ----
test_that("`name` must be a single non-null string", {
  needs_string("name", palette_lgbtq("rainbow"))
})

test_that("`name` must be one of existing palette names", {
  expect_snapshot(
    palette_lgbtq("non-existent"),
    cran = TRUE,
    error = TRUE
  )
})

test_that("aliases are supported", {
  expect_identical(
    palette_lgbtq("wlw"),
    palette_lgbtq("lesbian")
  )
})

test_that("`name` is case-insensitive", {
  expect_identical(
    palette_lgbtq("BEAR"),
    palette_lgbtq("bear")
  )
})

test_that("`name` allows using spaces instead of underscores", {
  expect_identical(
    palette_lgbtq("gay 7"),
    palette_lgbtq("gay_7")
  )
})
