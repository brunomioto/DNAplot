test_that("Return a ggplot", {
  p <- plot_dna("ACTG")
  expect_true(ggplot2::is.ggplot(p))
})
