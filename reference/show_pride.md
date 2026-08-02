# List available palettes

Shows the available LGBTQ palettes, possibly filtered by tags and/or
size.

## Usage

``` r
show_pride(..., tags = NULL, sizes = NULL)
```

## Arguments

- ...:

    
  These dots are for future extensions and must be empty.

- tags:

  [`character()`](https://rdrr.io/r/base/character.html)  
  Tags to filter by; currently available: `"rainbow"`, `"sexuality"`,
  `"gender"`, `"subculture"`, `"a-spec"`, `"galactian"`.

- sizes:

  [`integer()`](https://rdrr.io/r/base/integer.html)  
  Palette sizes to require.

## Value

An `lgbtq_palette_list` with matching palettes.

## Examples

``` r
# By default, all palettes are shown
show_pride()
#> rainbow [6]
#>  █ #E40303
#>  █ #FF8C00
#>  █ #FFED00
#>  █ #008026
#>  █ #24408E
#>  █ #732982
#>  [rainbow]
#> 
#> lesbian [5]
#>  █ #D62900
#>  █ #FF9B55
#>  █ #FFFFFF
#>  █ #D461A6
#>  █ #A50062
#>  [sexuality]
#> 
#> gay [5]
#>  █ #078D70
#>  █ #98E8C1
#>  █ #FFFFFF
#>  █ #7BADE2
#>  █ #3D1A78
#>  [sexuality]
#> 
#> bisexual [3]
#>  █ #D00070
#>  █ #8C4799
#>  █ #0032A0
#>  [sexuality]
#> 
#> transgender [3]
#>  █ #55CDFC
#>  █ #F7A8B8
#>  █ #FFFFFF
#>  [gender]
#> 
#> asexual [4]
#>  █ #000000
#>  █ #A4A4A4
#>  █ #FFFFFF
#>  █ #810081
#>  [sexuality]
#> 
#> intersex [2]
#>  █ #FFD800
#>  █ #7902AA
#> 
#> nonbinary [4]
#>  █ #FFF430
#>  █ #FFFFFF
#>  █ #9C59D1
#>  █ #000000
#>  [gender]
#> 
#> philadelphia [8]
#>  █ #000000
#>  █ #784F17
#>  █ #D12229
#>  █ #F68A1E
#>  █ #FDE01A
#>  █ #007940
#>  █ #24408E
#>  █ #732982
#>  [rainbow]
#> 
#> progress [11]
#>  █ #D12229
#>  █ #F68A1E
#>  █ #FDE01A
#>  █ #007940
#>  █ #24408E
#>  █ #732982
#>  █ #FFFFFF
#>  █ #FFAFC8
#>  █ #74D7EE
#>  █ #784F17
#>  █ #000000
#>  [rainbow]
#> 
#> aromantic [5]
#>  █ #3DA542
#>  █ #A7D379
#>  █ #FFFFFF
#>  █ #A4A4A4
#>  █ #000000
#>  [sexuality], [a-spec]
#> 
#> acesthetic [4]
#>  █ #000000
#>  █ #A4A4A4
#>  █ #FFFFFF
#>  █ #FD82AE
#>  [sexuality], [a-spec]
#> 
#> analterous [4]
#>  █ #000000
#>  █ #A4A4A4
#>  █ #FFFFFF
#>  █ #75A0FF
#>  [sexuality], [a-spec]
#> 
#> asensual [4]
#>  █ #000000
#>  █ #A4A4A4
#>  █ #FFFFFF
#>  █ #FFD698
#>  [sexuality], [a-spec]
#> 
#> ace_spectrum [4]
#>  █ #151747
#>  █ #7557AD
#>  █ #D992B4
#>  █ #FFEDED
#>  [sexuality], [a-spec]
#> 
#> aro_spectrum [5]
#>  █ #3FA053
#>  █ #96D07C
#>  █ #F3FCCF
#>  █ #176363
#>  █ #052027
#>  [sexuality], [a-spec]
#> 
#> aroace [5]
#>  █ #E28C00
#>  █ #ECCD00
#>  █ #FFFFFF
#>  █ #62AEDC
#>  █ #203856
#>  [sexuality], [a-spec]
#> 
#> alloace [4]
#>  █ #D50100
#>  █ #F85858
#>  █ #FFFFFF
#>  █ #81007F
#>  [sexuality], [a-spec]
#> 
#> aroallo [5]
#>  █ #3DA542
#>  █ #A8D379
#>  █ #FFFFFF
#>  █ #FBE34B
#>  █ #E8BB00
#>  [sexuality], [a-spec]
#> 
#> pansexual [3]
#>  █ #FF1B8D
#>  █ #FFDA00
#>  █ #1BB3FF
#>  [sexuality]
#> 
#> androsexual [3]
#>  █ #00CCFF
#>  █ #603524
#>  █ #B79ADD
#>  [sexuality]
#> 
#> gynesexual [3]
#>  █ #F3A9B6
#>  █ #903F2A
#>  █ #5A953B
#>  [sexuality]
#> 
#> abrosexual [5]
#>  █ #37CBBD
#>  █ #95E9B1
#>  █ #FFFFFF
#>  █ #FEA396
#>  █ #F35777
#>  [sexuality]
#> 
#> omnisexual [5]
#>  █ #FFABD7
#>  █ #FF55BE
#>  █ #240045
#>  █ #675FFE
#>  █ #8DA5FE
#>  [sexuality]
#> 
#> omniromantic [5]
#>  █ #FFABD7
#>  █ #FF55BE
#>  █ #003B4B
#>  █ #5BD9BA
#>  █ #91FFC5
#>  [sexuality]
#> 
#> lesbian_7 [7]
#>  █ #A60061
#>  █ #B95594
#>  █ #D162A8
#>  █ #FFFFFF
#>  █ #E5ADD1
#>  █ #C64D53
#>  █ #8C1801
#>  [sexuality]
#> 
#> gay_7 [7]
#>  █ #078D70
#>  █ #26CEAA
#>  █ #98E8C1
#>  █ #FFFFFF
#>  █ #7BADE2
#>  █ #5049CC
#>  █ #3D1A78
#>  [sexuality]
#> 
#> demiboy [4]
#>  █ #7F7F7F
#>  █ #C4C4C4
#>  █ #9DD7EA
#>  █ #FFFFFF
#>  [gender]
#> 
#> demigirl [4]
#>  █ #7F7F7F
#>  █ #C4C4C4
#>  █ #FDADC8
#>  █ #FFFFFF
#>  [gender]
#> 
#> helian [5]
#>  █ #FF7367
#>  █ #BC3028
#>  █ #FFF7B8
#>  █ #000000
#>  █ #B5B5B5
#>  [gender], [galactian]
#> 
#> lunarian [5]
#>  █ #C6A5D0
#>  █ #85618D
#>  █ #FFF7B8
#>  █ #000000
#>  █ #B5B5B5
#>  [gender], [galactian]
#> 
#> solarian [5]
#>  █ #FFB187
#>  █ #FF7D51
#>  █ #FFF7B8
#>  █ #000000
#>  █ #B5B5B5
#>  [gender], [galactian]
#> 
#> stellarian [5]
#>  █ #B6D6C1
#>  █ #79C49D
#>  █ #FFF7B8
#>  █ #000000
#>  █ #B5B5B5
#>  [gender], [galactian]
#> 
#> genderfluid [5]
#>  █ #FF76A4
#>  █ #FFFFFF
#>  █ #C011D7
#>  █ #000000
#>  █ #2F3CBE
#>  [gender]
#> 
#> genderqueer [3]
#>  █ #B57EDC
#>  █ #FFFFFF
#>  █ #4A8123
#>  [gender]
#> 
#> agender [4]
#>  █ #000000
#>  █ #BCC4C7
#>  █ #FFFFFF
#>  █ #B7F684
#>  [gender]
#> 
#> bigender [6]
#>  █ #C479A2
#>  █ #EDA5CD
#>  █ #D6C7E8
#>  █ #FFFFFF
#>  █ #9AC7E8
#>  █ #6D82D1
#>  [gender]
#> 
#> amatopunk [5]
#>  █ #531768
#>  █ #B74D71
#>  █ #DB966D
#>  █ #FFE7AA
#>  █ #4E8C69
#>  [subculture]
#> 
#> bear [7]
#>  █ #623804
#>  █ #D56300
#>  █ #FEDD63
#>  █ #FEE6B8
#>  █ #FFFFFF
#>  █ #555555
#>  █ #000000
#>  [subculture]
#> 
#> butch [7]
#>  █ #324070
#>  █ #6A7AA4
#>  █ #8A92A9
#>  █ #EDECEB
#>  █ #C0B4DB
#>  █ #764EC5
#>  █ #51048A
#>  [subculture]
#> 
#> femme [5]
#>  █ #7D0037
#>  █ #DE42F1
#>  █ #FDFDFD
#>  █ #F29C41
#>  █ #9E470E
#>  [subculture]
#> 
#> otter [5]
#>  █ #23A8FA
#>  █ #9AD7FC
#>  █ #FFFFFF
#>  █ #B4B4B4
#>  █ #2A2A2A
#>  [subculture]
#> 
#> queerhet [5]
#>  █ #4E8492
#>  █ #6CCB99
#>  █ #727D6E
#>  █ #DAC686
#>  █ #B86962
#> 
#> questioning [4]
#>  █ #FF8636
#>  █ #F9E134
#>  █ #36E32D
#>  █ #2499F5
#> 

# To find rainbow palettes of sizes 6 and 8:
show_pride(tags = "rainbow", sizes = c(6, 8))
#> rainbow [6]
#>  █ #E40303
#>  █ #FF8C00
#>  █ #FFED00
#>  █ #008026
#>  █ #24408E
#>  █ #732982
#>  [rainbow]
#> 
#> philadelphia [8]
#>  █ #000000
#>  █ #784F17
#>  █ #D12229
#>  █ #F68A1E
#>  █ #FDE01A
#>  █ #007940
#>  █ #24408E
#>  █ #732982
#>  [rainbow]
#> 
```
