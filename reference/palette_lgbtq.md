# Get one of LGBTQ palettes

Returns a palette object with colors based on a specified LGBTQ flag.
Note: the number of colors vary between palettes!

## Usage

``` r
palette_lgbtq(name)
```

## Arguments

- name:

  `character(1)`  
  Name of the flag the colors are based on.

## Value

An `lgbtq_palette` object containing a vector of RGB color codes as
strings.

## Examples

``` r
palette_lgbtq("bisexual")
#> bisexual [3]
#>  █ #D00070
#>  █ #8C4799
#>  █ #0032A0
#>  [sexuality]
```
