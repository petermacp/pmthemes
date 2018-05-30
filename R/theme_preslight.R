#' Theme for light-background presentions.
#' 
#' \code{theme_preslight} applies custom theme to ggplot objects.
#' 
#' This is a custom function to apply a opinionated theme to ggplot
#' objects destinated for projected scientific presentations
#' @inheritParams ggplot2::theme_minimal
#' @export
#' @family themes


theme_preslight <- function(...) {
  theme_minimal() +
    theme(
      text = element_text(family = "Gill Sans", color = "#22211d", size=16),
      plot.subtitle = element_text(size=rel(0.8), face = "italic"),
      plot.caption = element_text(size=rel(0.5), face = "italic"),
      axis.line.x = element_line(size = 0.2, colour = "#22211d"),
      axis.line.y = element_line(size = 0.2, colour = "#22211d"),
      axis.ticks = element_line(size=0.2, colour = "#22211d"),
      axis.title.y = element_text(angle = 0, hjust = 0),
      axis.title.x = element_text(hjust=0.5),
      panel.grid.major = element_line(color = "#ebebe5", size = 0.2),
      panel.grid.minor = element_line(color = "#ebebe5", size = 0.1),
      plot.background = element_rect(fill = "white", color = NA), 
      panel.background = element_rect(fill = "white", color = NA), 
      legend.background = element_rect(fill = "white", color = NA),
      panel.border = element_blank(),
      ...
    )
}
