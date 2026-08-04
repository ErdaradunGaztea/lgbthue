test_that("print.lgbtq_sequence() output remains unchanged", {
  expect_snapshot(print(seq(.pride[["lesbian"]])))
})

test_that("print.lgbtq_palette() output remains unchanged", {
  expect_snapshot(print(.pride[["lesbian"]]))
})

test_that("print.lgbtq_palette_list() output remains unchanged", {
  expect_snapshot(print(.pride))
})
