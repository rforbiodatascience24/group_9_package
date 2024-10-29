#'  Translate Codon Sequences to Amino Acids
#'This function takes a vector of codon sequences and returns a single string
#' of corresponding amino acids by using a predefined table (`codon_code`).
#'
#' @param codons A character vector of codon sequences, where each sequence should be a valid codon (e.g., "UUU", "UCU").
#'
#' @return  A single string that represents the sequence of amino acids
#' corresponding to the provided codons.
#' @export
#'
#' @examples
#' codon_code <- c("UUU" = "F", "UCU" = "S", "UAU" = "Y", "UGU" = "C",
#'                 "UUC" = "F", "UCC" = "S", "UAC" = "Y", "UGC" = "C")
#' codon_string(c("UUU", "UCU", "UGC"))  # Returns "FSC"
#'
codon_string <- function(codons){
    codon_string1 <- paste0(codon_code[codons], collapse = "")
       return(codon_string1)
  }
