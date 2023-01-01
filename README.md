
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

``` r
library("karrma")
```

## Prerequisites

``` r
install.packages("spotifyr")
```

Setup Spotify API access token in Renviron:

``` r
usethis::edit_r_environ()

# Insert in Renviron
SPOTIFY_CLIENT_ID = "xxxxxxxxxxxxxxxxxxxxx"
SPOTIFY_CLIENT_SECRET = "xxxxxxxxxxxxxxxxxxxxx"
```

## Examples

``` r
get_spotify()
#> # A tibble: 2 × 3
#>   name         followers popularity
#>   <chr>            <int>      <int>
#> 1 Taylor Swift  65082132         99
#> 2 Kanye West    19022825         91

get_pageviews_raw(granularity = "monthly")
#>     project language      article     access agent granularity       date
#> 1 wikipedia       en Taylor_Swift all-access  user     monthly 2022-12-01
#> 2 wikipedia       en   Kanye_West all-access  user     monthly 2022-12-01
#>     views
#> 1  827599
#> 2 1183478
```
