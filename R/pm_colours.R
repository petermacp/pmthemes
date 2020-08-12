pm_colors <- list(
  "green"   = "#027462",
  "red"    = "#931621",
  "blue" = "#2C8C99",
  "teal"  = "#42D9C8",
  "pink"   = "#D4AFCD" 
)

pm_pal <- function(
  primary = "green", 
  other = "pink", 
  direction = 1
) {
  stopifnot(primary %in% names(pm_colors))
  
  function(n) {
    if (n > 5) warning("PM Color Palette only has 6 colors.")
    
    if (n == 2) {
      other <- if (!other %in% names(pm_colors)) {
        other
      } else {
        pm_colors[other]
      }
      color_list <- c(other, pm_colors[primary])
    } else {
      color_list <- pm_colors[1:n]
    }
    
    color_list <- unname(unlist(color_list))
    if (direction >= 0) color_list else rev(color_list)
  }
}

scale_colour_pm <- function(
  primary = "green", 
  other = "pink", 
  direction = 1, 
  ...
) {
  ggplot2::discrete_scale(
    "colour", "pm", 
    pm_pal(primary, other, direction), 
    ...
  )
}

scale_color_pm <- scale_colour_pm

library(ggplot2)

# Convert vs, gear to character so ggplot2 uses discrete scales
mtcars$vs   <- paste(mtcars$vs)
mtcars$gear <- paste(mtcars$gear)

g <- ggplot(mtcars) +
  aes(mpg, wt, color = vs) +
  geom_point(size = 3) +
  theme_bw() +
  scale_colour_pm(other="red", direction=-1)

 g
 