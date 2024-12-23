

# Base R scatterplot
plot(
  selected_data$TS_PCT, 
  selected_data$W_PCT,
  main = "NBA Players",
  xlab = "True Shooting Percentage",
  ylab = "Percentage of games played won",
  pch = 16,       # Filled circles for points
  col = "black"   # Black points
)

# Add a horizontal line at the mean of W_PCT
abline(h = mean(selected_data$W_PCT, na.rm = TRUE), col = "blue", lwd = 1)

R version 4.4.2 (2024-10-31 ucrt) -- "Pile of Leaves"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> library(readr)
> nba_2016_2017_100 <- read_csv("C:/Users/vp24abd/Downloads/Compressed/archive_2/nba_2016_2017_100.csv")
Rows: 100 Columns: 63                                                                        
── Column specification ───────────────────────────────────────────────────────────────────────
Delimiter: ","
chr  (4): PLAYER_NAME, TEAM_ABBREVIATION, WIKIPEDIA_HANDLE, TWITTER_HANDLE
dbl (58): PLAYER_ID, TEAM_ID, AGE, GP, W, L, W_PCT, MIN, OFF_RATING, DEF_RATING, NET_RATING...
num  (1): CFPARAMS

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> View(nba_2016_2017_100)
> setwd("path/to/your/directory")
Error in setwd("path/to/your/directory") : 
  cannot change working directory
> setwd("C:\Users\vp24abd\Downloads\Compressed\archive_2")
Error: '\U' used without hex digits in character string (<input>:1:11)
> setwd("C:/Users/vp24abd/Downloads/Compressed")
> install.packages("tidyverse") # If not already installed
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  also installing the dependencies ‘fastmap’, ‘sys’, ‘ps’, ‘base64enc’, ‘sass’, ‘digest’, ‘cachem’, ‘rappdirs’, ‘rematch’, ‘askpass’, ‘processx’, ‘evaluate’, ‘highr’, ‘xfun’, ‘yaml’, ‘bslib’, ‘fontawesome’, ‘htmltools’, ‘jquerylib’, ‘tinytex’, ‘backports’, ‘memoise’, ‘blob’, ‘DBI’, ‘data.table’, ‘gargle’, ‘uuid’, ‘cellranger’, ‘curl’, ‘ids’, ‘rematch2’, ‘mime’, ‘openssl’, ‘timechange’, ‘systemfonts’, ‘textshaping’, ‘callr’, ‘fs’, ‘knitr’, ‘rmarkdown’, ‘selectr’, ‘stringi’, ‘broom’, ‘conflicted’, ‘dbplyr’, ‘dtplyr’, ‘forcats’, ‘googledrive’, ‘googlesheets4’, ‘haven’, ‘httr’, ‘jsonlite’, ‘lubridate’, ‘modelr’, ‘purrr’, ‘ragg’, ‘readxl’, ‘reprex’, ‘rstudioapi’, ‘rvest’, ‘stringr’, ‘tidyr’, ‘xml2’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/fastmap_1.2.0.zip'
Content type 'application/zip' length 135602 bytes (132 KB)
downloaded 132 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/sys_3.4.3.zip'
Content type 'application/zip' length 47997 bytes (46 KB)
downloaded 46 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/ps_1.8.1.zip'
Content type 'application/zip' length 645261 bytes (630 KB)
downloaded 630 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/base64enc_0.1-3.zip'
Content type 'application/zip' length 33130 bytes (32 KB)
downloaded 32 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/sass_0.4.9.zip'
Content type 'application/zip' length 2614203 bytes (2.5 MB)
downloaded 2.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/digest_0.6.37.zip'
Content type 'application/zip' length 223524 bytes (218 KB)
downloaded 218 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/cachem_1.1.0.zip'
Content type 'application/zip' length 74079 bytes (72 KB)
downloaded 72 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rappdirs_0.3.3.zip'
Content type 'application/zip' length 52991 bytes (51 KB)
downloaded 51 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rematch_2.0.0.zip'
Content type 'application/zip' length 19347 bytes (18 KB)
downloaded 18 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/askpass_1.2.1.zip'
Content type 'application/zip' length 74807 bytes (73 KB)
downloaded 73 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/processx_3.8.4.zip'
Content type 'application/zip' length 689484 bytes (673 KB)
downloaded 673 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/evaluate_1.0.1.zip'
Content type 'application/zip' length 104094 bytes (101 KB)
downloaded 101 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/highr_0.11.zip'
Content type 'application/zip' length 44321 bytes (43 KB)
downloaded 43 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/xfun_0.49.zip'
Content type 'application/zip' length 568835 bytes (555 KB)
downloaded 555 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/yaml_2.3.10.zip'
Content type 'application/zip' length 119343 bytes (116 KB)
downloaded 116 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/bslib_0.8.0.zip'
Content type 'application/zip' length 5596902 bytes (5.3 MB)
downloaded 5.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/fontawesome_0.5.3.zip'
Content type 'application/zip' length 1391238 bytes (1.3 MB)
downloaded 1.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/htmltools_0.5.8.1.zip'
Content type 'application/zip' length 364900 bytes (356 KB)
downloaded 356 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/jquerylib_0.1.4.zip'
Content type 'application/zip' length 526144 bytes (513 KB)
downloaded 513 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/tinytex_0.54.zip'
Content type 'application/zip' length 146439 bytes (143 KB)
downloaded 143 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/backports_1.5.0.zip'
Content type 'application/zip' length 122682 bytes (119 KB)
downloaded 119 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/memoise_2.0.1.zip'
Content type 'application/zip' length 51537 bytes (50 KB)
downloaded 50 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/blob_1.2.4.zip'
Content type 'application/zip' length 50035 bytes (48 KB)
downloaded 48 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/DBI_1.2.3.zip'
Content type 'application/zip' length 941371 bytes (919 KB)
downloaded 919 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/data.table_1.16.2.zip'
Content type 'application/zip' length 2667189 bytes (2.5 MB)
downloaded 2.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/gargle_1.5.2.zip'
Content type 'application/zip' length 806940 bytes (788 KB)
downloaded 788 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/uuid_1.2-1.zip'
Content type 'application/zip' length 52934 bytes (51 KB)
downloaded 51 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/cellranger_1.1.0.zip'
Content type 'application/zip' length 107900 bytes (105 KB)
downloaded 105 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/curl_6.0.1.zip'
Content type 'application/zip' length 3501802 bytes (3.3 MB)
downloaded 3.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/ids_1.0.1.zip'
Content type 'application/zip' length 126519 bytes (123 KB)
downloaded 123 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rematch2_2.1.2.zip'
Content type 'application/zip' length 49082 bytes (47 KB)
downloaded 47 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/mime_0.12.zip'
Content type 'application/zip' length 40893 bytes (39 KB)
downloaded 39 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/openssl_2.2.2.zip'
Content type 'application/zip' length 3402671 bytes (3.2 MB)
downloaded 3.2 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/timechange_0.3.0.zip'
Content type 'application/zip' length 513613 bytes (501 KB)
downloaded 501 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/systemfonts_1.1.0.zip'
Content type 'application/zip' length 1337145 bytes (1.3 MB)
downloaded 1.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/textshaping_0.4.0.zip'
Content type 'application/zip' length 1212370 bytes (1.2 MB)
downloaded 1.2 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/callr_3.7.6.zip'
Content type 'application/zip' length 477435 bytes (466 KB)
downloaded 466 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/fs_1.6.5.zip'
Content type 'application/zip' length 415196 bytes (405 KB)
downloaded 405 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/knitr_1.49.zip'
Content type 'application/zip' length 1178714 bytes (1.1 MB)
downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rmarkdown_2.29.zip'
Content type 'application/zip' length 2698546 bytes (2.6 MB)
downloaded 2.6 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/selectr_0.4-2.zip'
Content type 'application/zip' length 500029 bytes (488 KB)
downloaded 488 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/stringi_1.8.4.zip'
Content type 'application/zip' length 15027635 bytes (14.3 MB)
downloaded 14.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/broom_1.0.7.zip'
Content type 'application/zip' length 1935228 bytes (1.8 MB)
downloaded 1.8 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/conflicted_1.2.0.zip'
Content type 'application/zip' length 57776 bytes (56 KB)
downloaded 56 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/dbplyr_2.5.0.zip'
Content type 'application/zip' length 1267077 bytes (1.2 MB)
downloaded 1.2 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/dtplyr_1.3.1.zip'
Content type 'application/zip' length 360215 bytes (351 KB)
downloaded 351 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/forcats_1.0.0.zip'
Content type 'application/zip' length 429318 bytes (419 KB)
downloaded 419 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/googledrive_2.1.1.zip'
Content type 'application/zip' length 1911084 bytes (1.8 MB)
downloaded 1.8 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/googlesheets4_1.1.1.zip'
Content type 'application/zip' length 525625 bytes (513 KB)
downloaded 513 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/haven_2.5.4.zip'
Content type 'application/zip' length 773905 bytes (755 KB)
downloaded 755 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/httr_1.4.7.zip'
Content type 'application/zip' length 499251 bytes (487 KB)
downloaded 487 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/jsonlite_1.8.9.zip'
Content type 'application/zip' length 1107839 bytes (1.1 MB)
downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/lubridate_1.9.3.zip'
Content type 'application/zip' length 990528 bytes (967 KB)
downloaded 967 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/modelr_0.1.11.zip'
Content type 'application/zip' length 204073 bytes (199 KB)
downloaded 199 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/purrr_1.0.2.zip'
Content type 'application/zip' length 513748 bytes (501 KB)
downloaded 501 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/ragg_1.3.3.zip'
Content type 'application/zip' length 1966487 bytes (1.9 MB)
downloaded 1.9 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/readxl_1.4.3.zip'
Content type 'application/zip' length 1204272 bytes (1.1 MB)
downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/reprex_2.1.1.zip'
Content type 'application/zip' length 505354 bytes (493 KB)
downloaded 493 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rstudioapi_0.17.1.zip'
Content type 'application/zip' length 345785 bytes (337 KB)
downloaded 337 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/rvest_1.0.4.zip'
Content type 'application/zip' length 309402 bytes (302 KB)
downloaded 302 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/stringr_1.5.1.zip'
Content type 'application/zip' length 324691 bytes (317 KB)
downloaded 317 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/tidyr_1.3.1.zip'
Content type 'application/zip' length 1272951 bytes (1.2 MB)
downloaded 1.2 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/xml2_1.3.6.zip'
Content type 'application/zip' length 1615326 bytes (1.5 MB)
downloaded 1.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/tidyverse_2.0.0.zip'
Content type 'application/zip' length 431654 bytes (421 KB)
downloaded 421 KB

package ‘fastmap’ successfully unpacked and MD5 sums checked
package ‘sys’ successfully unpacked and MD5 sums checked
package ‘ps’ successfully unpacked and MD5 sums checked
package ‘base64enc’ successfully unpacked and MD5 sums checked
package ‘sass’ successfully unpacked and MD5 sums checked
package ‘digest’ successfully unpacked and MD5 sums checked
package ‘cachem’ successfully unpacked and MD5 sums checked
package ‘rappdirs’ successfully unpacked and MD5 sums checked
package ‘rematch’ successfully unpacked and MD5 sums checked
package ‘askpass’ successfully unpacked and MD5 sums checked
package ‘processx’ successfully unpacked and MD5 sums checked
package ‘evaluate’ successfully unpacked and MD5 sums checked
package ‘highr’ successfully unpacked and MD5 sums checked
package ‘xfun’ successfully unpacked and MD5 sums checked
package ‘yaml’ successfully unpacked and MD5 sums checked
package ‘bslib’ successfully unpacked and MD5 sums checked
package ‘fontawesome’ successfully unpacked and MD5 sums checked
package ‘htmltools’ successfully unpacked and MD5 sums checked
package ‘jquerylib’ successfully unpacked and MD5 sums checked
package ‘tinytex’ successfully unpacked and MD5 sums checked
package ‘backports’ successfully unpacked and MD5 sums checked
package ‘memoise’ successfully unpacked and MD5 sums checked
package ‘blob’ successfully unpacked and MD5 sums checked
package ‘DBI’ successfully unpacked and MD5 sums checked
package ‘data.table’ successfully unpacked and MD5 sums checked
package ‘gargle’ successfully unpacked and MD5 sums checked
package ‘uuid’ successfully unpacked and MD5 sums checked
package ‘cellranger’ successfully unpacked and MD5 sums checked
package ‘curl’ successfully unpacked and MD5 sums checked
package ‘ids’ successfully unpacked and MD5 sums checked
package ‘rematch2’ successfully unpacked and MD5 sums checked
package ‘mime’ successfully unpacked and MD5 sums checked
package ‘openssl’ successfully unpacked and MD5 sums checked
package ‘timechange’ successfully unpacked and MD5 sums checked
package ‘systemfonts’ successfully unpacked and MD5 sums checked
package ‘textshaping’ successfully unpacked and MD5 sums checked
package ‘callr’ successfully unpacked and MD5 sums checked
package ‘fs’ successfully unpacked and MD5 sums checked
package ‘knitr’ successfully unpacked and MD5 sums checked
package ‘rmarkdown’ successfully unpacked and MD5 sums checked
package ‘selectr’ successfully unpacked and MD5 sums checked
package ‘stringi’ successfully unpacked and MD5 sums checked
package ‘broom’ successfully unpacked and MD5 sums checked
package ‘conflicted’ successfully unpacked and MD5 sums checked
package ‘dbplyr’ successfully unpacked and MD5 sums checked
package ‘dtplyr’ successfully unpacked and MD5 sums checked
package ‘forcats’ successfully unpacked and MD5 sums checked
package ‘googledrive’ successfully unpacked and MD5 sums checked
package ‘googlesheets4’ successfully unpacked and MD5 sums checked
package ‘haven’ successfully unpacked and MD5 sums checked
package ‘httr’ successfully unpacked and MD5 sums checked
package ‘jsonlite’ successfully unpacked and MD5 sums checked
package ‘lubridate’ successfully unpacked and MD5 sums checked
package ‘modelr’ successfully unpacked and MD5 sums checked
package ‘purrr’ successfully unpacked and MD5 sums checked
package ‘ragg’ successfully unpacked and MD5 sums checked
package ‘readxl’ successfully unpacked and MD5 sums checked
package ‘reprex’ successfully unpacked and MD5 sums checked
package ‘rstudioapi’ successfully unpacked and MD5 sums checked
package ‘rvest’ successfully unpacked and MD5 sums checked
package ‘stringr’ successfully unpacked and MD5 sums checked
package ‘tidyr’ successfully unpacked and MD5 sums checked
package ‘xml2’ successfully unpacked and MD5 sums checked
package ‘tidyverse’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\vp24abd\AppData\Local\Temp\RtmpghMoja\downloaded_packages
> library(tidyverse)
── Attaching core tidyverse packages ─────────────────────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.1.4     ✔ purrr     1.0.2
✔ forcats   1.0.0     ✔ stringr   1.5.1
✔ ggplot2   3.5.1     ✔ tibble    3.2.1
✔ lubridate 1.9.3     ✔ tidyr     1.3.1
── Conflicts ───────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package to force all conflicts to become errors
> 
  > 
  > nba_data <- read_csv("C:/path/to/social_power_nba.csv")
Error: 'C:/path/to/social_power_nba.csv' does not exist.
> 
  > nba_data <- read_csv("C:/Users/vp24abd/Downloads/Compressed/archive_2/social_power_nba.csv")
Error: 'C:/Users/vp24abd/Downloads/Compressed/archive_2/social_power_nba.csv' does not exist.
> nba_data <- read_csv("C:/Users/vp24abd/Downloads/Compressed/archive_2/nba_2016_2017_100.csv")
Rows: 100 Columns: 63                                                                                   
── Column specification ──────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr  (4): PLAYER_NAME, TEAM_ABBREVIATION, WIKIPEDIA_HANDLE, TWITTER_HANDLE
dbl (58): PLAYER_ID, TEAM_ID, AGE, GP, W, L, W_PCT, MIN, OFF_RATING, DEF_RATING, NET_RATING, AST_PCT, ...
num  (1): CFPARAMS

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> 
  > selected_data <- dataset %>%
  +     select(PLAYER_ID, W_PCT, TS_PCT)

> # Extract specific columns and save to a new variable
  > selected_data <- dataset %>%
  +     select(PLAYER_ID, W_PCT, TS_PCT)

> setwd("C:/Users/vp24abd/Downloads/Compressed/archive_2")
> dataset<- read_csv("nba_2016_2017_100.csv")
Rows: 100 Columns: 63                                                                                   
── Column specification ──────────────────────────────────────────────────────────────────────────────────
Delimiter: ","
chr  (4): PLAYER_NAME, TEAM_ABBREVIATION, WIKIPEDIA_HANDLE, TWITTER_HANDLE
dbl (58): PLAYER_ID, TEAM_ID, AGE, GP, W, L, W_PCT, MIN, OFF_RATING, DEF_RATING, NET_RATING, AST_PCT, ...
num  (1): CFPARAMS

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> selected_data <- dataset %>%
  +     select(PLAYER_ID, W_PCT, TS_PCT)
> head(selected_data)
# A tibble: 6 × 3
PLAYER_ID W_PCT TS_PCT
<dbl> <dbl>  <dbl>
  1    201566 0.568  0.554
2   1626246 0.457  0.606
3   1627743 0.2    0.753
4    203076 0.413  0.58 
5    201935 0.667  0.613
6    201142 0.823  0.651
> install.packages("dplyr")
Error in install.packages : Updating loaded packages

Restarting R session...

> install.packages("dplyr")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/dplyr_1.1.4.zip'
Content type 'application/zip' length 1586987 bytes (1.5 MB)
downloaded 1.5 MB

package ‘dplyr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\vp24abd\AppData\Local\Temp\RtmpwVsWQT\downloaded_packages
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

> 
  > selected_data <- dataset %>%
  +     select(PLAYER_ID, W_PCT, TS_PCT)
> 
  > head(selected_data)
# A tibble: 6 × 3
PLAYER_ID W_PCT TS_PCT
<dbl> <dbl>  <dbl>
  1    201566 0.568  0.554
2   1626246 0.457  0.606
3   1627743 0.2    0.753
4    203076 0.413  0.58 
5    201935 0.667  0.613
6    201142 0.823  0.651
> 
  > install.packages("ggplot2")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.4/ggplot2_3.5.1.zip'
Content type 'application/zip' length 5022358 bytes (4.8 MB)
downloaded 4.8 MB

package ‘ggplot2’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in