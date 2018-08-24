
<!-- README.md is generated from README.Rmd. Please edit that file -->
pmthemes
========

This is a small package containing functions for producing consistent documents and figures for scientific reports.

Installation
------------

You can install pmthemes from github with:

``` r
# install.packages("devtools")
devtools::install_github("petermacp/pmthemes")
```

Themes for presentations
------------------------

These themes are intended to be applied to figures that will be projected, for example using PowerPoint or Keynote.

These are opinionated themes. By default: - Font sizes are large to aid comprehension when projected - Sans-serif font is used (Gill sans) - y-axis text is rotated (to avoid readers having to turn their heads!)

### Theme for light-background presentations

`theme_preslight()` is used to format `ggplot` objects destined for display in a scientific presentation with a light background.

*Example:*

``` r
library(ggplot2)
library(pmthemes)

ggplot(mtcars) + geom_point(aes(mpg, wt), colour="darkred") + 
  theme_preslight() + 
  labs(title = "This is a test graph", 
       subtitle = "Showing theme_preslight()")
```

![](README-unnamed-chunk-2-1.png)

### Theme for dark-background presentations

`theme_presdark()` is used to format `ggplot` objects destined for display in a scientific presentation with a dark background.

*Example:*

``` r
library(ggplot2)
library(pmthemes)

ggplot(mtcars) + geom_point(aes(mpg, wt), colour="yellow") + 
  theme_presdark() + 
  labs(title = "This is a test graph", subtitle = "Showing theme_presdark()") +
#don't run code after this. 
#Only to demonstrate dark background
  theme(plot.background = element_rect(fill = "midnightblue", colour = NA),
        panel.background = element_rect(fill = "midnightblue", colour = NA))
```

![](README-unnamed-chunk-3-1.png) <br>

### Theme for figures in Word Documents

`theme_wordfig()` is used to format `ggplot` objects destined for inclusion in a word processing document (e.g. a scientific manuscript).

*Example:*

``` r
library(ggplot2)
library(pmthemes)

ggplot(mtcars) + geom_point(aes(mpg, wt), colour="black") + 
  theme_wordfig() + 
  labs(title = "This is a test graph", 
       subtitle = "Showing theme_wordfig()")
```

![](README-unnamed-chunk-4-1.png)

### Vintage rail poster colour themes

The `scale_colour_rail()` and `scale_fill_rail()` functions are used to define colour palettes for aesthetics specified in the scale name.

Much of the code for extracting colour palettes from images using a k-means clustering images was taken from: <http://www.milanor.net/blog/build-color-palette-from-image-with-paletter/>

There are seven different palettes, each based on a vintage british railway poster:

### aberdeen

![aberdeen](data-raw/aberdeen.jpg)

<br>

### cornwall

![cornwall](data-raw/cornwall.jpg)

<br>

### harrogate

![harrogate](data-raw/harrogate.jpg)

<br>

### penzance

![penzance](data-raw/penzance.jpg)

<br>

### somerset

![somerset](data-raw/somerset.jpg)

<br>

### wales

![wales](data-raw/wales.jpg)

<br>

### yorkshirecoast

![yorkshirecoast](data-raw/yorkshirecoast.jpg)

Examples
--------

An example using the `cornwall` palette.

``` r
library(ggplot2)
library(pmthemes)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut)) + theme_wordfig() +
  scale_fill_rail(palette="cornwall")
```

![](README-unnamed-chunk-5-1.png)

<br>

Here is the `harrogate` palette.

``` r
library(ggplot2)
library(pmthemes)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut)) + theme_wordfig() +
  scale_fill_rail(palette="harrogate")
```

![](README-unnamed-chunk-6-1.png)

<br>

...and the `penzance` palette.

``` r
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut)) + theme_wordfig() +
  scale_fill_rail(palette="penzance")
```

![](README-unnamed-chunk-7-1.png)

<br>

### R Markdown template

The `pmthemes` package will additionally install an R Markdown template for writing scientific analysis report.

To use the package, run: `library(pmthemes)`, then `File/New File/R Markdown/From template`. Then click on the `Analysis template` file to open a new R Markdown document.

You will need to modify the yaml header to provide your own information.
