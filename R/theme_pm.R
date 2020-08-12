#' Theme for light-background presentions.
#' 
#' \code{theme_pm} applies custom theme to ggplot objects.
#' 
#' This is a custom function to apply a opinionated theme to ggplot
#' objects destinated for scientific presentations with a light
#' background
#' @inheritParams ggplot2::theme_minimal
#' @export
#' @family themes


theme_pm <- function(...) {
  theme_minimal() +
    theme(
      text = element_text(family = "Raleway", color = "#5E564D"),
      axis.line.x = element_line(color = "#5E564D"),
      axis.line.y = element_blank(),
      axis.ticks = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      plot.background = element_rect(fill = "white", color = NA), 
      panel.background = element_rect(fill = "white", color = "#5E564D"), 
      legend.background = element_rect(fill = "white", color = NA),
      panel.border = element_blank(),
      strip.text = element_text(colour = "black",
                                face = "bold",
                                hjust = 0)
    )
}

