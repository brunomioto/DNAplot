#' Plot DNA sequence
#'
#' Creates a plot of a DNA sequence, with each base represented by a colored rectangle.
#'
#' @param seq A character string representing the DNA sequence.
#'
#' @return A `ggplot2` object representing the DNA sequence plot.
#'
#' @examples
#'
#' seq <- "ATCGATCG"
#' plot_dna(seq)
#'
#' @importFrom ggplot2 ggplot aes geom_text geom_rect annotate scale_fill_manual theme_void theme element_rect coord_equal
#' @importFrom rlang .data
#'
#' @export
#'
plot_dna <- function(seq) {

  vec <- strsplit(toupper(seq), "")[[1]]

  length(vec)

  plot <- data.frame(
    x = seq(0,length(vec)-1,1),
    y = 0,
    b = vec
    ) |>
    ggplot(aes(x = .data$x,
               y = .data$y))+
    geom_text(aes(label = .data$b,
                  y = .data$y+0.1))+
    geom_rect(
      aes(xmin = .data$x-0.1,
          xmax = .data$x+0.1,
          ymin = 0,
          ymax = -0.5,
          fill = .data$b)
    )+
    annotate(
      "rect",
      xmin = -0.3,
      xmax = length(vec)-1+0.3,
      ymin = 0,
      ymax = -0.2
    )+
    scale_fill_manual(
      values = c(
        "A" = "#e41a1c",
        "C" = "#377eb8",
        "T" = "#4daf4a",
        "G" = "#984ea3"
      )
    )+
    theme_void()+
    theme(
      plot.background = element_rect(fill = "white",
                                     color = NA),
      legend.position = "none"
    )+
    coord_equal(
      clip = "off"
    )+
    NULL

  cli::cli_alert_info("Plotting {length(vec)} bases")

  return(plot)

}
