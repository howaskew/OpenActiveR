
<!-- README.md is generated from README.Rmd. Please edit that file -->

# OpenActiveR

<!-- badges: start -->
<!-- badges: end -->

OpenActive makes it easier for people to discover activities nearby. By
sharing data about all the opportunities for physical exercise,
innovators can design new apps and services to help people get active.
This package provides code to harvest and display OpenActive opportunity
data.

## Installation

You can install the development version of OpenActiveR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("howaskew/OpenActiveR")
```

## Example

Start at the start with the OpenActive data catalogue:

``` r
library(OpenActiveR)
catalogue_urls <- get_catalogue_urls()
print(catalogue_urls)
#> [[1]]
#> [1] "https://opendata.leisurecloud.live/api/datacatalog"
#> 
#> [[2]]
#> [1] "https://openactivedatacatalog.legendonlineservices.co.uk/api/DataCatalog"
#> 
#> [[3]]
#> [1] "https://openactive.io/data-catalogs/singular.jsonld"
#> 
#> [[4]]
#> [1] "https://app.bookteq.com/api/openactive/catalogue"
```
