
<!-- README.md is generated from README.Rmd. Please edit that file -->

# karrma

<!-- badges: start -->
<!-- badges: end -->

The goal of karrma is to …

## Installation

You can install the development version of karrma from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("judith-bourque/karrma")
```

## Prerequisites

``` r
install.packages('spotifyr')
```

## Setup Spotify API access token in Renviron

``` r
usethis::edit_r_environ()

# Insert in Renviron
SPOTIFY_CLIENT_ID = 'xxxxxxxxxxxxxxxxxxxxx'
SPOTIFY_CLIENT_SECRET = 'xxxxxxxxxxxxxxxxxxxxx'
```
