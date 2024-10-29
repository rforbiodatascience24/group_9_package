
test_that("codon_string returns correct amino acid sequence", {



  # Test case: valid input
  expect_equal(codon_string(c("UUU", "UCU", "UGC")), "FSC")


  # Test case: empty input (should return empty string)
  expect_equal(codon_string(character(0)), "")
})
