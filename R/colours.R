#' Vintage British Rail Palettes
#' 
#'A collection of colour palettes inspired by vintage British Rail posters
#'
#'
#' Available palletes:
#' 
#' aberdeen
#' cornwall
#' harrogate
#' penzance
#' somerset
#' wales
#' yorkshirecoast

#'
#'@examples
#'
#' # devtools::install_github("petermacp/pmthemes")
#'
#' # Make a plot using the aberdeen palette
#' library(tidyverse)
#' ggplot(data = diamonds) +
#' geom_bar(mapping = aes(x = cut, fill = cut)) 
#' + theme_wordfig() + scale_fill_rail(palette="aberdeen")
#' 
#' # Make a plot using the penzance palette
#' ggplot(data = diamonds) +
#' geom_bar(mapping = aes(x = cut, fill = cut)) 
#' + theme_wordfig() + scale_fill_rail(palette="penzance")
#'
#' @export
data("railpalettes", package="pmthemes")
rail_palettes <- railpalettes
