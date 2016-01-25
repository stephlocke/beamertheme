context("beamerStyle")

skip_on_cran()

test_that("format successfully produce a document", {

testFormat <- function(output_format) {
  output_file <- tempfile()
  capture.output(rmarkdown::render("example.Rmd",
                        output_format = output_format,
                        output_file = output_file))
  expect_true(file.exists(output_file))
  output_file
}

testFormat(beamerStyle())

})
