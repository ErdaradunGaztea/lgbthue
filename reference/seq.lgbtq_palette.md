# Generate colour sequence from a palette

Transforms a palette into a sequence of colours corresponding to the
order of those colours on the corresponding flag.

## Usage

``` r
# S3 method for class 'lgbtq_palette'
seq(x, ...)

# S3 method for class 'lgbtq_palette_hflag_symmetrical'
seq(x, ...)

# S3 method for class 'lgbtq_palette_hflag_outer'
seq(x, ...)
```

## Arguments

- x:

  `lgbtq_palette()`  
  Palette to generate sequence from.

- ...:

    
  These dots are for future extensions and must be empty.

## Value

A character vector of colours in flag order.
