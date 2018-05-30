
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

ggplot(mtcars) + geom_point(aes(mpg, wt), colour="darkred") + theme_preslight()
```

![](README-unnamed-chunk-2-1.png)

### Theme for dark-background presentations

`theme_presdark()` is used to format `ggplot` objects destined for display in a scientific presentation with a dark background.

*Example:*

``` r
library(ggplot2)
library(pmthemes)

ggplot(mtcars) + geom_point(aes(mpg, wt), colour="darkred") + theme_presdark()
```

![](README-unnamed-chunk-3-1.png)
