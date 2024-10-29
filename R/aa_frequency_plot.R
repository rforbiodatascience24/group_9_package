#' Create a barplot representing the frequencies of each aminoacids  in the given protein
#'
#' @param protein the protein of which to count the frequencies of the aminoacids
#'
#' @return Barplot of the aa frequencies
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @export
#'
#' @examples
#' aa_frequency_plot("ATTTTWWWHH")
aa_frequency_plot <- function(protein){
  # retrieve all unique aa present in the protein
  unique_aa <- protein |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # count how many time each aa is present in the protein
  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = protein, pattern =  amino_acid)) |>
    as.data.frame()

  #
  colnames(counts) <- c("Counts")
  counts[["protein"]] <- rownames(counts)

  # create the plot
  frequency_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = protein, y = Counts, fill = protein)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(frequency_plot)
}
