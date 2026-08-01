test_that("Plotting a palette doesn't change graphical settings", {
  before <- graphics::par()
  plot(.pride[["rainbow"]])
  after <- graphics::par()

  expect_identical(after, before)
})

test_that("plot.lgbtq_palette() output remains unchanged", {
  vdiffr::expect_doppelganger(
    "Plot method remains unchanged",
    plot(.pride[["lesbian"]])
  )
})
