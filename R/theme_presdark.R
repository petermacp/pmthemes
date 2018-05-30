#' Theme for dark-background presentions.
#' 
#' \code{theme_presdark} applies custom theme to ggplot objects.
#' 
#' This is a custom function to apply a opinionated theme to ggplot
#' objects destinated for scientific presentations with a dark
#' background
#' @inheritParams ggplot2::theme_minimal
#' @export
#' @family themes


theme_presdark <- function(...) {
  theme_minimal() +
    theme(
      text = element_text(family = "Gill Sans", color = "#f5f5f5", size=16),
      plot.subtitle = element_text(size=rel(0.8), face = "italic"),
      plot.caption = element_text(size=rel(0.5), face = "italic"),
      axis.line.x = element_line(size = 0.2, colour = "#f5f5f5"),
      axis.line.y = element_line(size = 0.2, colour = "#f5f5f5"),
      axis.ticks = element_line(size=0.2, colour = "#f5f5f5"),
      axis.title.y = element_text(angle = 0, hjust = 0),
      axis.title.x = element_text(hjust=0.5),
      panel.grid.major = element_line(color = "#f5f5f5", size = 0.2),
      panel.grid.minor = element_line(color = "#f5f5f5", size = 0.1),
      plot.background = element_rect(fill = "transparent", colour = NA), 
      panel.background = element_rect(fill = "transparent", colour = NA), 
      legend.background = element_rect(fill = "transparent", colour = NA),
      panel.border = element_blank(),
      ...
    )
}
