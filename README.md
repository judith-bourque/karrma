
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

# Create Spotify API access token

Sys.setenv(SPOTIFY_CLIENT_ID = 'xxxxxxxxxxxxxxxxxxxxx')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'xxxxxxxxxxxxxxxxxxxxx')

access_token <- get_spotify_access_token()
```
