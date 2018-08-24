#' rail palette
#'
#' @param palette Choose from 'rail_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @examples
#' library(tidyverse)
#' ggplot(data = diamonds) +
#' geom_bar(mapping = aes(x = cut, fill = cut)) 
#' + theme_wordfig() + scale_fill_rail(palette="aberdeen")
#'
#' @export
#'
rail_pal <- function(palette="aberdeen", alpha = 1, reverse = FALSE) {
  pal <- rail_palettes[[palette]]
  if (reverse){
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_rail
#'
#' @param palette Choose from 'rail_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(tidyverse)
#' ggplot(data = diamonds) +
#' geom_bar(mapping = aes(x = cut, fill = cut)) 
#' + theme_wordfig() + scale_fill_rail(palette="aberdeen")
#'
#' library(tidyverse)
#' ggplot(data = diamonds) +
#' geom_bar(mapping = aes(x = cut, fill = cut)) 
#' + theme_wordfig() + scale_fill_rail(palette="aberdeen")
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_rail <- function(..., palette = "aberdeen",
                                     discrete = TRUE, alpha = 1,
                                     reverse = FALSE) {
  if (discrete) {
    discrete_scale("colour", "rail", palette=rail_pal(palette, alpha = alpha, reverse = reverse))
  } else {
    scale_color_gradientn(colours = rail_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}

#' @rdname scale_color_rail
#' @export
scale_colour_rail <- scale_color_rail

#' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'rail_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams rail_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_rail <- function(..., palette="aberdeen",
                                    discrete = TRUE, alpha=1, reverse = TRUE) {
  if (discrete) {
    discrete_scale("fill", "rail", palette=rail_pal(palette, alpha = alpha, reverse = reverse))
  }
  else {
    scale_fill_gradientn(colours = rail_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}