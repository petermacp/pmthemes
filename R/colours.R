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
rail_palettes <- list(
  ## Aberdeen
  ## https://railwayposters.co.uk/product/art-prints/17420/aberdeen
  aberdeen = c(
    "#A09C31",	
    "#A09C31",
    "#7199B0",	
    "#E1A93A",
    "#B51D14",
    "#A7ACAF",
    "#185A91",
    "#C7A06B"
  ),
  
  ## Cornwall
  ## https://shop.actionposters.co.uk/vintage-british-rail-cornish-coast-railway-poster-a3-print-21318-p.asp
  cornwall = c(
    "#674A49",	
    "#3C2B4E",
    "#E5DB98",	
    "#AAAA70",
    "#5B2731",
    "#9BDFB9",
    "#AF7B57",
    "#8B8F6A"
  ), 

  ## Harrogate
  ## https://shop.actionposters.co.uk/vintage-british-rail-cornish-coast-railway-poster-a3-print-21318-p.asp
  harrogate = c(
    "#AC362B",	
    "#A5936F",
    "#37302F",	
    "#C6715C",
    "#565958",
    "#DCAF97",
    "#683F28",
    "#0F2138"
  ),
  
  ## Penzance
  ## https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjdgvbrmJzcAhVFsBQKHY1WBvUQjRx6BAgBEAU&url=https%3A%2F%2Fwww.pinterest.com%2Fcook1940town%2Fenglanduk-railway-posters%2F&psig=AOvVaw3DGSgezGH-k-cgO-OgX7Xi&ust=1531575326238595
  penzance = c(
    "#F26B07",	
    "#D7B554",
    "#78C9D1",	
    "#4D9890",
    "#8C181E",
    "#401341",
    "#C5CAC2",
    "#9BB21A"
  ),
  
  ## Somerset
  ## https://railwayposters.co.uk/product/art-prints/17222/railway-poster-somerset
  somerset = c(
    "#3B4846",	
    "#E19B3F",
    "#54443D",	
    "#B56A35",
    "#BCBEBC",
    "#1D1E22",
    "#957153",
    "#6D7473"
  ),
  
  ## Wales
  ## https://railwayposters.co.uk/product/art-prints/17336/railway-poster-wales
  wales = c(
    "#706973",	
    "#D9D0B8",
    "#8290A3",	
    "#252D41",
    "#4D4D6D",
    "#545A4F",
    "#C2CAA2",
    "#35375D"
  ),
  
  ## Yorkshire Coast
  ## https://railwayposters.co.uk/product/art-prints/16799/the-yorkshire-coast-2
  yorkshirecoast = c(
    "#E2E7D3",	
    "#837032",
    "#5C655C",	
    "#A6A884",
    "#E8E4BE",
    "#CEE0E2",
    "#486791",
    "#1F2C22"
  )
)