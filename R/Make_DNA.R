#' Title: Makes DNA of a given len
#'
#' @param len_DNA the length of the DNA string
#'
#' @return The function returens a dna string whit a given length
#' @export
#'
#' @examples
#' DNA <- Make_DNA(4)
#' DNA
Make_DNA <- function(len_DNA){
  DNA <- sample(c("A", "T", "G", "C"), size = len_DNA, replace = TRUE)
  DNA <- paste0(DNA, collapse = "")
  return(DNA)
}
