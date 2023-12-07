
<!-- README.md is generated from README.Rmd. Please edit that file -->

# DNAplot

<!-- badges: start -->

[![R-CMD-check](https://github.com/brunomioto/DNAplot/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/brunomioto/DNAplot/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The DNAplot package provides a simple and customizable function to
create aesthetically pleasing plots of DNA sequences. Each base is
represented by a colored rectangle, allowing for easy visualization and
analysis of sequence features.

## Installation

You can install the development version of DNAplot from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("brunomioto/DNAplot")
```

## Get started

``` r
library(DNAplot)
```

Just write a sequence and plot it!

``` r
sequence <- "ACTGAAGTA"

plot_dna(sequence)
#> ℹ Plotting 9 bases
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

You can also plot undefined bases

``` r
sequence <- "ACYGARGTA"

plot_dna(sequence)
#> ℹ Plotting 9 bases
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />
