# show_pride() -----------------------------------------------------------------
## Output ----
test_that("returns a list of palettes", {
  expect_type(
    show_pride(),
    "list"
  )
  expect_s3_class(
    show_pride(),
    "lgbtq_palette_list"
  )
})

test_that("returns named list", {
  expect_named(show_pride())
})

test_that("every element is an lgbtq palette", {
  for (element in show_pride()) {
    checkmate::expect_character(element)
    expect_s3_class(element, "lgbtq_palette")
  }
})

## Input ----
### tags ----
test_that("`tags` must occur in returned palettes", {
  tags <- "rainbow"
  for (palette in show_pride(tags = tags)) {
    expect_contains(attr(palette, "tags", exact = TRUE), tags)
  }

  tags <- c("rainbow", "sexuality")
  for (palette in show_pride(tags = tags)) {
    expect_true(any(attr(palette, "tags", exact = TRUE) %in% tags))
  }
})

test_that("specifying multiple `tags` returns ANY OF", {
  expect_setequal(
    show_pride(tags = c("rainbow", "gender")),
    union(
      show_pride(tags = "rainbow"),
      show_pride(tags = "gender")
    )
  )
})

test_that("the order of `tags` doesn't matter", {
  expect_identical(
    show_pride(tags = c("rainbow", "gender")),
    show_pride(tags = c("gender", "rainbow"))
  )
})

test_that("`tags` must be a character vector or NULL", {
  needs_character("tags", show_pride(tags = c("sexuality", "rainbow")), null_ok = TRUE)
})

test_that("non-existent tags are ignored", {
  expect_identical(
    show_pride(tags = c("non-existent", "rainbow")),
    show_pride(tags = "rainbow")
  )
})

test_that("empty `tags` return an empty list", {
  expect_identical(
    show_pride(tags = character()),
    .pride[integer()]
  )
})

### sizes ----
test_that("`sizes` must match returned palettes", {
  sizes <- 4L
  for (palette in show_pride(sizes = sizes)) {
    expect_length(palette, sizes)
  }

  sizes <- c(4L, 7L)
  for (palette in show_pride(sizes = sizes)) {
    expect_in(length(palette), sizes)
  }
})

test_that("specifying multiple `sizes` returns ANY OF", {
  expect_setequal(
    show_pride(sizes = c(4L, 7L)),
    union(
      show_pride(sizes = 4L),
      show_pride(sizes = 7L)
    )
  )
})

test_that("the order of `sizes` doesn't matter", {
  expect_identical(
    show_pride(sizes = c(4L, 7L)),
    show_pride(sizes = c(7L, 4L))
  )
})

test_that("`sizes` accept both integers and integerish numbers", {
  expect_identical(
    show_pride(sizes = c(4L, 7L)),
    show_pride(sizes = c(4, 7))
  )
})

test_that("`sizes` must be an integerish vector or NULL", {
  needs_integerish("sizes", show_pride(sizes = c(4L, 7L)), lower = 1L, null_ok = TRUE)
})

test_that("non-matching sizes are ignored", {
  expect_identical(
    show_pride(sizes = c(5L, 123L)),
    show_pride(sizes = 5L)
  )
})

test_that("empty `sizes` return an empty list", {
  expect_identical(
    show_pride(sizes = integer()),
    .pride[integer()]
  )
})
