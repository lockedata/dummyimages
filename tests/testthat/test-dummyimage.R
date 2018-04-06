context("dummyimage")

test_that("dummyimage works with defaults",{
          result<-dummyimage("")
          expect_equal(magick::image_info(result)$width, 300)
})
