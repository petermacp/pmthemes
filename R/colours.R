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
#' # Make an x-y plot using the aberdeen palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20), 
#'           y = rnorm(100, 0, 20), 
#'           cl = sample(letters[1:8], 100, replace=TRUE))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) + 
#'   geom_point(size=4) + scale_colour_ochre() +
#'   theme_bw() + theme(aspect.ratio=1) 
#' 
#' # Make a histogram using the penzance palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_ochre(palette="penzance")
#'
#' @export
data("railpalettes", package="pmthemes")
rail_palettes <- railpalettes
