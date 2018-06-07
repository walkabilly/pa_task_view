---
title: "PA Task View"
author: "Daniel Fuller"
date: '2018-06-07'
output:
      html_document:
        keep_md: true
---



## Creating a task view for physical activity researchers

First step is use the `cranly` package to see what is out there. I found this tutorial to help https://rviews.rstudio.com/2018/05/31/exploring-r-packages/. Now I have a tidy dataframe with all the packages. 


```r
library(cranly)
package_db <- clean_CRAN_db(tools::CRAN_package_db())
```

## Search dataframe for physical activity related packages

I have used the search terms:

- physical activity
- actigraph
- fitbit
- garmin
- geneactiv
- apple health
- google fit
- samsung health

I had originally included the term `exercise` but that search included many packages that were not related to physical activity. I also did the same search in title but that did not help and only returned 1 result that was already captured in the description search. 


```r
library(stringr)
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
pa_search <- c("physical activity", "actigraph", "fitbit", "garmin", "geneactiv", "apple health", "google fit", "samsung health")
package_db$pa <- str_extract_all(package_db$description, paste(pa_search, collapse="|"))
pa_packages <- filter(package_db, pa != "character(0)")
```

From this search there are 10 packages are designed to analyse some type of physical activity data.


```r
table(pa_packages$package)
```

```
## 
##         Actigraphy activpalProcessing             AGread 
##                  1                  1                  1 
##      fitbitScraper               GGIR             heatex 
##                  1                  1                  1 
##           lifelogr            nparACT        PASenseWear 
##                  1                  1                  1 
##   PhysicalActivity 
##                  1
```

