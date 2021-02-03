---
title: "find-packages"
author: "Daniel Fuller"
date: "11/21/2019"
output:
    html_document:
      keep_md: true
---




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
library(kableExtra)
```

```
## 
## Attaching package: 'kableExtra'
```

```
## The following object is masked from 'package:dplyr':
## 
##     group_rows
```


```r
pa_search <-
    c(
        "physical activity",
        "actigraph",
        "Actigraph",
        "fitbit",
        "garmin",
        "geneactiv",
        "apple health",
        "google fit",
        "samsung health",
        "exercise",
        "omron",
        "actilife",
        "cycling",
        "swimming",
        "activity counts",
        "sedentary",
        "activPAL",
        "accelerometer"
    )

package_db$pa <- str_extract_all(package_db$description, paste(pa_search, collapse = "|"))

pa_packages <- filter(package_db, pa != "character(0)")
```

From this search there are 10 packages are designed to analyse some type of physical activity data.






```r
pa_pkg_names <- pa_packages$package
```

## Packages' description


```r
pa_packages %>% select(package, description) %>%
   kable() %>%
   kable_styling("striped", full_width = F) %>% 
   column_spec(2, width_max = 100)
```

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> package </th>
   <th style="text-align:left;"> description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> acc </td>
   <td style="text-align:left;max-width: 100; "> Processes accelerometer data from uni-axial and tri-axial devices,
    and generates data summaries. Also includes functions to plot, analyze, and
    simulate accelerometer data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> accelerometry </td>
   <td style="text-align:left;max-width: 100; "> A collection of functions that perform operations on time-series accelerometer data, such as identify non-wear time, flag minutes that are part of an activity bout, and find the maximum 10-minute average count value. The functions are generally very flexible, allowing for a variety of algorithms to be implemented. Most of the functions are written in C++ for efficiency. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> accelmissing </td>
   <td style="text-align:left;max-width: 100; "> Imputation for the missing count values in accelerometer data. The methodology includes both parametric and semi-parametric multiple imputations under the zero-inflated Poisson lognormal model. This package also provides multiple functions to pre-process the accelerometer data previous to the missing data imputation. These includes detecting wearing and non-wearing time, selecting valid days and subjects, and creating plots. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ActFrag </td>
   <td style="text-align:left;max-width: 100; "> Recent studies haven shown that, on top of total daily active/sedentary volumes, the time 
  accumulation strategies provide more sensitive information. This package provides functions to extract 
  commonly used fragmentation metrics to quantify such time accumulation strategies based on minute level 
  actigraphy-measured activity counts data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> activityCounts </td>
   <td style="text-align:left;max-width: 100; "> ActiLife software generates activity counts from data collected by Actigraph accelerometers &lt;https://s3.amazonaws.com/actigraphcorp.com/wp-content/uploads/2017/11/26205758/ActiGraph-White-Paper_What-is-a-Count_.pdf&gt;.
  Actigraph is one of the most common research-grade accelerometers. There is considerable research
  validating and developing algorithms for human activity using ActiLife counts. Unfortunately,
  ActiLife counts are proprietary and difficult to implement if researchers use different accelerometer brands.
  The code  creates ActiLife counts from raw acceleration data for different accelerometer brands and it is developed
  based on the study done by Brond and others (2017) &lt;doi:10.1249/MSS.0000000000001344&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> activPAL </td>
   <td style="text-align:left;max-width: 100; "> Contains functions to generate pre-defined summary statistics from activPAL
    events files &lt;http:www.palt.com&gt;.  The package also contains functions to produce informative 
    graphics that visualise physical activity behaviour and trends.  This includes
    generating graphs that align physical activity behaviour with additional time based 
    observations described by other data sets, such as sleep diaries and continuous glucose 
    monitoring data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> activpalProcessing </td>
   <td style="text-align:left;max-width: 100; "> Performs estimation of physical activity and sedentary behavior variables from activPAL (PAL Technologies, Glasgow, Scotland) events files. See &lt;http://paltechnologies.com&gt; for more information on the activPAL. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> adept </td>
   <td style="text-align:left;max-width: 100; "> Designed for optimal use in performing fast, 
    accurate walking strides segmentation from high-density 
    data collected from a wearable accelerometer worn 
    during continuous walking activity. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> AGread </td>
   <td style="text-align:left;max-width: 100; "> Standardize the process of bringing various modes of output files
    into R. Additionally, processes are provided to read and minimally pre-
    process raw data from primary accelerometer and inertial measurement unit files,
    as well as binary .gt3x files. ActiGraph monitors are used to estimate physical
    activity outcomes via body-worn sensors that measure (e.g.) acceleration or
    rotational velocity. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> airGRteaching </td>
   <td style="text-align:left;max-width: 100; "> Add-on package to the 'airGR' package that simplifies its use and is aimed at being used for teaching hydrology. The package provides 1) three functions that allow to complete very simply a hydrological modelling exercise 2) plotting functions to help students to explore observed data and to interpret the results of calibration and simulation of the GR ('Génie rural') models 3) a 'Shiny' graphical interface that allows for displaying the impact of model parameters on hydrographs and models internal variables. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> AMCP </td>
   <td style="text-align:left;max-width: 100; "> Accompanies "Designing experiments and 
    analyzing data: A model comparison perspective" (3rd ed.) by 
    Maxwell, Delaney, &amp; Kelley (2018; Routledge). 
    Contains all of the data sets in the book's chapters and 
    end-of-chapter exercises. Information about the book is available at 
    &lt;http://www.DesigningExperiments.com&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> arctools </td>
   <td style="text-align:left;max-width: 100; "> Provides functions to process minute level actigraphy-measured activity counts data and extract commonly used physical activity volume and fragmentation metrics. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> astrodatR </td>
   <td style="text-align:left;max-width: 100; "> A collection of 19 datasets from contemporary astronomical research.  They are described the textbook `Modern Statistical Methods for Astronomy with R Applications' by Eric D. Feigelson and G. Jogesh Babu (Cambridge University Press, 2012, Appendix C) or on the website of Penn State's Center for Astrostatistics (http://astrostatistics.psu.edu/datasets).  These datasets can be used to exercise methodology involving: density estimation; heteroscedastic measurement errors; contingency tables; two-sample hypothesis tests; spatial point processes; nonlinear regression; mixture models; censoring and truncation; multivariate analysis; classification and clustering; inhomogeneous Poisson processes; periodic and stochastic time series analysis. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Biostatistics </td>
   <td style="text-align:left;max-width: 100; "> Tutorials for statistics, aimed at biological scientists. 
    Subjects range from basic descriptive statistics 
    through to complex linear modelling. The tutorials
    include text, videos, interactive coding exercises
    and multiple choice quizzes. The package also 
    includes 19 datasets which are used in the 
    tutorials. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> caschrono </td>
   <td style="text-align:left;max-width: 100; "> Functions, data sets and exercises solutions for the book 'Séries Temporelles Avec R' (Yves Aragon, edp sciences, 2016). For all chapters, a vignette is available with some additional material and exercises solutions. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ConvergenceConcepts </td>
   <td style="text-align:left;max-width: 100; "> This is a pedagogical package, designed to help students understanding convergence of
             random variables. It provides a way to investigate interactively various modes of
	     convergence (in probability, almost surely, in law and in mean) of a sequence of i.i.d.
	     random variables. Visualisation of simulated sample paths is possible through interactive
	     plots. The approach is illustrated by examples and exercises through the function
	     'investigate', as described in
	     Lafaye de Micheaux and Liquet (2009) &lt;doi:10.1198/tas.2009.0032&gt;.
	     The user can study his/her own sequences of random variables. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> covr </td>
   <td style="text-align:left;max-width: 100; "> Track and report code coverage for your package and (optionally)
    upload the results to a coverage service like 'Codecov' &lt;https://codecov.io&gt; or
    'Coveralls' &lt;https://coveralls.io&gt;. Code coverage is a measure of the amount of
    code being exercised by a set of tests. It is an indirect measure of test
    quality and completeness. This package is compatible with any testing
    methodology or framework and tracks coverage of both R code and compiled
    C/C++/FORTRAN code. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> cycleRtools </td>
   <td style="text-align:left;max-width: 100; "> A suite of functions for analysing cycling data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DAAG </td>
   <td style="text-align:left;max-width: 100; "> Various data sets used in examples and exercises in the
        book Maindonald, J.H. and Braun, W.J. (2003, 2007, 2010) "Data
        Analysis and Graphics Using R". </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DescTools </td>
   <td style="text-align:left;max-width: 100; "> A collection of miscellaneous basic statistic functions and convenience wrappers for efficiently describing data. The author's intention was to create a toolbox, which facilitates the (notoriously time consuming) first descriptive tasks in data analysis, consisting of calculating descriptive statistics, drawing graphical summaries and reporting the results. The package contains furthermore functions to produce documents using MS Word (or PowerPoint) and functions to import data from Excel. Many of the included functions can be found scattered in other packages and other sources written partly by Titans of R. The reason for collecting them here, was primarily to have them consolidated in ONE instead of dozens of packages (which themselves might depend on other packages which are not needed at all), and to provide a common and consistent interface as far as function and arguments naming, NA handling, recycling rules etc. are concerned. Google style guides were used as naming rules (in absence of convincing alternatives). The 'BigCamelCase' style was consequently applied to functions borrowed from contributed R packages as well. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ds4psy </td>
   <td style="text-align:left;max-width: 100; "> All datasets and functions required for the examples and exercises of the book "Data Science for Psychologists" (by Hansjoerg Neth, Konstanz University, 2020), available at &lt;https://bookdown.org/hneth/ds4psy/&gt;. The book and course introduce principles and methods of data science to students of psychology and other biological or social sciences. The 'ds4psy' package primarily provides datasets, but also functions for data generation and manipulation (e.g., of text and time data) and graphics that are used in the book and its exercises. All functions included in 'ds4psy' are designed to be explicit and instructive, rather than elegant or efficient. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> EcoHydRology </td>
   <td style="text-align:left;max-width: 100; "> Provides a flexible foundation for scientists, 
  engineers, and policy makers to base teaching exercises as well as for 
  more applied use to model complex eco-hydrological interactions. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ecostats </td>
   <td style="text-align:left;max-width: 100; "> Functions and data supporting the Eco-Stats text (Warton, forthcoming, Springer), and solutions to exercises. Functions include tools for using simulation envelopes in diagnostic plots, and a function for diagnostic plots of multivariate linear models. Datasets mentioned in the package are included here (where not available elsewhere) and vignette solutions to textbook exercises will be forthcoming at a later time. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> eddington </td>
   <td style="text-align:left;max-width: 100; "> Compute a cyclist's Eddington number, including efficiently
    computing cumulative E over a vector. A cyclist's Eddington number
    &lt;https://en.wikipedia.org/wiki/Arthur_Eddington#Eddington_number_for_cycling&gt;
    is the maximum number satisfying the condition such that a cyclist has
    ridden E miles or greater in E days. The algorithm in this package is an
    improvement over the conventional approach because both summary statistics
    and cumulative statistics can be computed in linear time, since it does not
    require initial sorting of the data. These functions may also be used for
    computing h-indices for authors, a metric described by Hirsch (2005)
    &lt;doi:10.1073/pnas.0507655102&gt;. Both are specific applications of computing
    the side length of a Durfee square 
    &lt;https://en.wikipedia.org/wiki/Durfee_square&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> exams </td>
   <td style="text-align:left;max-width: 100; "> Automatic generation of exams based on exercises in Markdown or LaTeX format,
	possibly including R code for dynamic generation of exercise elements.
	Exercise types include single-choice and multiple-choice questions, arithmetic problems,
	string questions, and combinations thereof (cloze). Output formats include standalone
	files (PDF, HTML, Docx, ODT, ...), Moodle XML, QTI 1.2, QTI 2.1, Blackboard, Canvas, OpenOLAT,
	ARSnova, and TCExam. In addition to fully customizable PDF exams, a standardized PDF format
	(NOPS) is provided that can be printed, scanned, and automatically evaluated. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> eyeRead </td>
   <td style="text-align:left;max-width: 100; "> Functions to prepare and analyse eye tracking data of reading
  exercises. The functions allow some basic data preparations and code fixations 
  as first and second pass. First passes can be further devided into forward and 
  reading. The package further allows for aggregating fixation times per AOI or 
  per AOI and per type of pass (first forward, first rereading, second). These 
  methods are based on Hyönä, Lorch, and Rinck (2003) &lt;doi:10.1016/B978-044451020-4/50018-9&gt; 
  and Hyönä, and Lorch (2004) &lt;doi:10.1016/j.learninstruc.2004.01.001&gt;. It is 
  also possible to convert between metric length and visual degrees. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fExoticOptions </td>
   <td style="text-align:left;max-width: 100; "> Provides a collection of functions to evaluate
	barrier options, Asian options, binary options, currency 
    translated options, lookback options, multiple asset options
	and multiple exercise options. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fitbitScraper </td>
   <td style="text-align:left;max-width: 100; "> Scrapes data from Fitbit &lt;http://www.fitbit.com&gt;. This does not use the official
    API, but instead uses the API that the web dashboard uses to generate the graphs
    displayed on the dashboard after login at &lt;http://www.fitbit.com&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fitdc </td>
   <td style="text-align:left;max-width: 100; "> A pure R package for decoding activity files written in the FIT ("Flexible and Interoperable Data Transfer") format. A format that is fast becoming the standard for recording running and cycling data. Details of the FIT protocol can be found at &lt;https://www.thisisant.com/resources/fit&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fpp </td>
   <td style="text-align:left;max-width: 100; "> All data sets required for the examples and exercises in
        the book "Forecasting: principles and practice" by Rob J
        Hyndman and George Athanasopoulos. All packages required to run
        the examples are also loaded. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fpp2 </td>
   <td style="text-align:left;max-width: 100; "> All data sets required for the examples and exercises
  in the book "Forecasting: principles and practice" (2nd ed, 2018)
  by Rob J Hyndman and George Athanasopoulos &lt;https://otexts.com/fpp2/&gt;.
  All packages required to run the examples are also loaded. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fpp3 </td>
   <td style="text-align:left;max-width: 100; "> All data sets required for the examples and exercises in the book
    "Forecasting: principles and practice" by Rob J Hyndman and George Athanasopoulos
    &lt;http://OTexts.org/fpp3/&gt;.  All packages required to run the examples are also
    loaded. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gconsensus </td>
   <td style="text-align:left;max-width: 100; "> An implementation of the International Bureau of Weights and Measures (BIPM) generalized consensus estimators used to assign the reference value in a key comparison exercise. This can also be applied to any interlaboratory study. Given a set of different sources, primary laboratories or measurement methods this package provides an evaluation of the variance components according to the selected statistical method for consensus building. It also implements the comparison among different consensus builders and evaluates the participating method or sources against the consensus reference value. Based on a diverse set of references, DerSimonian-Laird (1986) &lt;doi:10.1016/0197-2456(86)90046-2&gt;, Vangel-Ruhkin (1999) &lt;doi:10.1111/j.0006-341X.1999.00129.x&gt;, for a complete list of references look at the reference section in the package documentation. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GENEAclassify </td>
   <td style="text-align:left;max-width: 100; "> Segmentation and classification procedures for data from the 'Activinsights GENEActiv' &lt;https://www.activinsights.com/products/geneactiv/&gt; accelerometer that provides the user with a model to guess behaviour from test data where behaviour is missing.
    Includes a step counting algorithm, a function to create segmented data with custom features and a function to use recursive partitioning provided in the function rpart() of the 'rpart' package to create classification models. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GENEAread </td>
   <td style="text-align:left;max-width: 100; "> Functions and analytics for GENEA-compatible accelerometer data into R objects. 
             See topic 'GENEAread' for an introduction to the package. 
             See &lt;https://www.activinsights.com/products/geneactiv/&gt; for more details on the GENEActiv device. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GENEAsphere </td>
   <td style="text-align:left;max-width: 100; "> Creates visualisations in two and three dimensions of simulated
    data based on detected segments or raw accelerometer data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GGIR </td>
   <td style="text-align:left;max-width: 100; "> A tool to process and analyse data collected with wearable raw acceleration sensors as described in Migueles and colleagues (JMPB 2019), and van Hees and colleagues (JApplPhysiol 2014; PLoSONE 2015). The package has been developed and tested for binary data from 'GENEActiv' &lt;https://www.activinsights.com/&gt; and GENEA devices (not for sale), .csv-export data from  'Actigraph' &lt;https://actigraphcorp.com&gt; devices, and .cwa and .wav-format data from 'Axivity' &lt;https://axivity.com&gt;. These devices are currently widely used in research on human daily physical activity. Further, the package can handle accelerometer data file from any other sensor brand providing that the data is stored in csv format and has either no header or a two column header. Also the package allows for external function embedding. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gmapsdistance </td>
   <td style="text-align:left;max-width: 100; "> Get distance and travel time between two points from Google Maps.
    Four possible modes of transportation (bicycling, walking, driving and
    public transportation). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> heatex </td>
   <td style="text-align:left;max-width: 100; "> The heatex package calculates heat storage in the body and
        the components of heat exchange (conductive, convective,
        radiative, and evaporative) between the body and the
        environment during physical activity based on the principles of
        partitional calorimetry. The program enables heat exchange
        calculations for a range of environmental conditions when
        wearing various clothing ensembles. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HH </td>
   <td style="text-align:left;max-width: 100; "> Support software for Statistical Analysis and Data Display (Second Edition, Springer, ISBN 978-1-4939-2121-8, 2015) and (First Edition, Springer, ISBN 0-387-40270-5, 2004) by Richard M. Heiberger and Burt Holland.  This contemporary presentation of statistical methods features extensive use of graphical displays for exploring data and for displaying the analysis.  The second edition includes redesigned graphics and additional chapters. The authors emphasize how to construct and interpret graphs, discuss principles of graphical design, and show how accompanying traditional tabular results are used to confirm the visual impressions derived directly from the graphs. Many of the graphical formats are novel and appear here for the first time in print.  All chapters have exercises.  All functions introduced in the book are in the package.  R code for all examples, both graphs and tables, in the book is included in the scripts directory of the package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HMMpa </td>
   <td style="text-align:left;max-width: 100; "> Analysing time-series accelerometer data to quantify length and 
             intensity of physical activity using hidden Markov models. 
             It also contains the traditional cut-off point method.
             Witowski V, Foraita R, Pitsiladis Y, Pigeot I, 
             Wirsik N (2014)&lt;doi:10.1371/journal.pone.0114089&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ISwR </td>
   <td style="text-align:left;max-width: 100; "> Data sets and scripts for text examples and exercises in 
  P. Dalgaard (2008), `Introductory Statistics with R', 2nd ed., Springer Verlag, ISBN 978-0387790534. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LearningRlab </td>
   <td style="text-align:left;max-width: 100; "> Aids in learning statistical functions incorporating the result of calculus done with each function and how they are obtained, that is, which equations and variables are used. Also for all these equations and their related variables detailed explanations and interactive exercises are also included. All these characteristics allow to the package user to improve the learning of statistics basics by means of their use. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> learnr </td>
   <td style="text-align:left;max-width: 100; "> Create interactive tutorials using R Markdown. Use a combination
  of narrative, figures, videos, exercises, and quizzes to create self-paced
  tutorials for learning about R and R packages. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LexisNexisTools </td>
   <td style="text-align:left;max-width: 100; "> My PhD supervisor once told me that everyone doing newspaper
    analysis starts by writing code to read in files from the 'LexisNexis' newspaper
    archive (retrieved e.g., from &lt;http://www.nexis.com/&gt; or any of the partner
    sites). However, while this is a nice exercise I do recommend, not everyone has
    the time. This package takes files downloaded from the newspaper archive of
    'LexisNexis', reads them into R and offers functions for further processing. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lifelogr </td>
   <td style="text-align:left;max-width: 100; "> Provides a framework for combining self-data (exercise, sleep, etc.) from multiple sources (fitbit, Apple Health), creating visualizations, and experimenting on onself. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LSMRealOptions </td>
   <td style="text-align:left;max-width: 100; "> The least-squares Monte Carlo (LSM) simulation method is a popular method for the approximation of the value of early and multiple exercise options. 'LSMRealOptions' provides implementations of the LSM simulation method to value American option products and capital investment projects through real options analysis. 'LSMRealOptions' values capital investment projects with cash flows dependent upon underlying state variables that are stochastically evolving, providing analysis into the timing and critical values at which investment is optimal. 'LSMRealOptions' provides flexibility in the stochastic processes followed by underlying assets, the number of state variables, basis functions and underlying asset characteristics to allow a broad range of assets to be valued through the LSM simulation method. Real options projects are further able to be valued whilst considering construction periods, time-varying initial capital expenditures and path-dependent operational flexibility including the ability to temporarily shutdown or permanently abandon projects after initial investment has occurred. The LSM simulation method was first presented in the prolific work of Longstaff and Schwartz (2001) &lt;doi:10.1093/rfs/14.1.113&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mdsr </td>
   <td style="text-align:left;max-width: 100; "> A complement to *Modern Data
    Science with R*, both the first (ISBN: 978-1498724487, publisher URL: 
    &lt;https://www.routledge.com/Modern-Data-Science-with-R/Baumer-Kaplan-Horton/p/book/9781498724487&gt;)
    and second editions (ISBN: 978-0367191498, publisher URL: 
    &lt;https://www.routledge.com/Modern-Data-Science-with-R/Baumer-Kaplan-Horton/p/book/9780367191498&gt;).
    This package contains data and code to complete exercises and 
    reproduce examples from the text. It also facilitates connections 
    to the SQL database server used in the book. Both editions of the book are 
    supported by this package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MHMM </td>
   <td style="text-align:left;max-width: 100; "> Estimation of the latent states and partition by maximum likelihood. Model can be used for analyzing accelerometer data. In such a case, the latent states corresponds to activity levels and the partition permits to consider heterogeneity within the population. Emission laws are zero-inflated gamma distributions. Their parameters depends on the latent states but not on the partition, to compare the time spent by activity levels between classes. Model description is available in Du Roy de Chaumaray, M. and Marbac, M. and Navarro, F. (2019) &lt;arXiv:1906.01547&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MIMSunit </td>
   <td style="text-align:left;max-width: 100; "> The MIMS-unit algorithm is developed to compute Monitor Independent
    Movement Summary Unit, a measurement to summarize raw accelerometer data 
    while ensuring harmonized results across different devices. It also includes
    scripts to reproduce results in the related publication 
    (John, D., Tang. Q., Albinali, F. and Intille, S. (2019) &lt;doi:10.1123/jmpb.2018-0068&gt;). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ModStatR </td>
   <td style="text-align:left;max-width: 100; "> Datasets and functions for the book "Modélisation statistique par la pratique avec R", F. Bertrand, E. Claeys and M. Maumy-Bertrand (2019, ISBN:9782100793525, Dunod, Paris). The first chapter of the book is dedicated to an introduction to the R statistical software. The second chapter deals with correlation analysis: Pearson, Spearman and Kendall simple, multiple and partial correlation coefficients. New wrapper functions for permutation tests or bootstrap of matrices of correlation are provided with the package. The third chapter is dedicated to data exploration with factorial analyses (PCA, CA, MCA, MDA) and clustering. The fourth chapter is dedicated to regression analysis: fitting and model diagnostics are detailed. The exercises focus on covariance analysis, logistic regression, Poisson regression, two-way analysis of variance for fixed or random factors. Various example datasets are shipped with the package: for instance on pokemon, world of warcraft, house tasks or food nutrition analyses. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MPGE </td>
   <td style="text-align:left;max-width: 100; "> Interaction between a genetic variant (e.g., a single nucleotide polymorphism) and an environmental variable (e.g., physical activity) can have a shared effect on multiple phenotypes (e.g., blood lipids). We implement a two-step method to test for an overall interaction effect on multiple phenotypes. In first step, the method tests for an overall marginal genetic association between the genetic variant and the multivariate phenotype. The genetic variants which show an evidence of marginal overall genetic effect in the first step are prioritized while testing for an overall gene-environment interaction effect in the second step. Methodology is available from: A Majumdar, KS Burch, S Sankararaman, B Pasaniuc, WJ Gauderman, JS Witte (2020) &lt;doi:10.1101/2020.07.06.190256&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NFCP </td>
   <td style="text-align:left;max-width: 100; "> Commodity pricing models are (systems of) stochastic differential equations that are utilized for the valuation and hedging of commodity contingent claims (i.e. derivative products on the commodity) and other commodity related investments. Commodity pricing models that capture market dynamics are of great importance to commodity market participants in order to exercise sound investment and risk-management strategies. Parameters of commodity pricing models are estimated through maximum likelihood estimation, using available term structure futures data of a commodity. 'NFCP' (n-factor commodity pricing) provides a framework for the modeling, parameter estimation, probabilistic forecasting, option valuation and simulation of commodity prices through state space and Monte Carlo methods, risk-neutral valuation and Kalman filtering. 'NFCP' allows the commodity pricing model to consist of n correlated factors, with both random walk and mean-reverting elements. The n-factor commodity pricing model framework was first presented in the work of Cortazar and Naranjo (2006) &lt;doi:10.1002/fut.20198&gt;. Examples presented in 'NFCP' replicate the two-factor crude oil commodity pricing model presented in the prolific work of Schwartz and Smith (2000) &lt;doi:10.1287/mnsc.46.7.893.12034&gt; with the approximate term structure futures data applied within this study provided in the 'NFCP' package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nparACT </td>
   <td style="text-align:left;max-width: 100; "> Computes interdaily stability (IS), intradaily variability (IV) &amp; the relative amplitude (RA) from actigraphy data as described in Blume et al. (2016) &lt;doi: 10.1016/j.mex.2016.05.006&gt; and van Someren et al. (1999) &lt;doi: 10.3109/07420529908998724&gt;. Additionally, it also computes L5 (i.e. the 5 hours with lowest average actigraphy amplitude) and M10 (the 10 hours with highest average amplitude) as well as the respective start times. The flex versions will also compute the L-value for a user-defined number of minutes. IS describes the strength of coupling of a rhythm to supposedly stable zeitgebers. It varies between 0 (Gaussian Noise) and 1 for perfect IS. IV describes the fragmentation of a rhythm, i.e. the frequency and extent of transitions between rest and activity. It is near 0 for a perfect sine wave, about 2 for Gaussian noise and may be even higher when a definite ultradian period of about 2 hrs is present. RA is the relative amplitude of a rhythm. Note that to obtain reliable results, actigraphy data should cover a reasonable number of days. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> opentripplanner </td>
   <td style="text-align:left;max-width: 100; "> Setup and connect to 'OpenTripPlanner' (OTP) &lt;http://www.opentripplanner.org/&gt;.
    OTP is an open source platform for multi-modal and multi-agency
    journey planning written in 'Java'. The package allows you to manage a local version or 
    connect to remote OTP server to find walking, cycling, driving, or transit routes.
    This package has been peer-reviewed by rOpenSci (v. 0.2.0.0). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PASenseWear </td>
   <td style="text-align:left;max-width: 100; "> Provide summary table of daily physical activity and per-person/grouped heat map for accelerometer data from SenseWear Armband. See &lt;https://templehealthcare.wordpress.com/the-sensewear-armband/&gt; for more information about SenseWear Armband. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PAutilities </td>
   <td style="text-align:left;max-width: 100; "> A collection of utilities that are useful for a broad range of
    tasks that are common in physical activity research, including the
    following: creation of Bland-Altman plots, formatted descriptive
    statistics, metabolic calculations (e.g. basal metabolic rate predictions)
    and conversions, demographic calculations (age and age-for-body-mass-index
    percentile), bout analysis of moderate-to-vigorous intensity physical
    activity, and analysis of bout detection algorithm performance. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pawacc </td>
   <td style="text-align:left;max-width: 100; "> This is a collection of functions to process, format and store accelerometer data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PhysActBedRest </td>
   <td style="text-align:left;max-width: 100; "> Contains a function to categorize accelerometer readings collected in free-living (e.g., for 24 hours/day for 7 days), preprocessed and compressed as counts (unit-less value) in a specified time period termed epoch (e.g., 1 minute) as either bedrest (sleep) or active.  The input is a matrix with a timestamp column and a column with number of counts per epoch. The output is the same dataframe with an additional column termed bedrest. In the bedrest column each line (epoch) contains a function-generated classification 'br' or 'a' denoting bedrest/sleep and activity, respectively.  The package is designed to be used after wear/nonwear marking function in the 'PhysicalActivity' package.  Version 1.1 adds preschool thresholds and corrects for possible errors in algorithm implementation. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PhysicalActivity </td>
   <td style="text-align:left;max-width: 100; "> It provides a function "wearingMarking" for classification of monitor
    wear and nonwear time intervals in accelerometer data collected to assess
    physical activity. The package also contains functions for making plot for 
    accelerometer data and obtaining the summary of various information including 
    daily monitor wear time and the mean monitor wear time during valid days.      
    "deliveryPred" and "markDelivery" can classify days for ActiGraph delivery by mail;
    "deliveryPreprocess" can process accelerometry data for analysis by zeropadding incomplete 
    days and removing low activity days; "markPAI" can categorize physical activity
    intensity level based on user-defined cut-points of accelerometer counts. It also
    supports importing ActiGraph AGD files with "readActigraph" and "queryActigraph" functions. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PML </td>
   <td style="text-align:left;max-width: 100; "> Penalized Multi-Band Learning algorithm can be effectively implemented for circadian rhythm analysis and daily activity pattern characterization using actigraphy (continuously measured objective physical activity data). Functions for interactive visualization of actigraph data are also included. Method reference: Li, X., Kane, M., Zhang, Y., Sun, W., Song, Y., Dong, S., Lin, Q., Zhu, Q., Jiang, F., Zhao, H. (2019) A Novel Penalized Multi-band Learning Approach Characterizes the Consolidation of Sleep-Wake Circadian Rhythms During Early Childhood Development. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Rdice </td>
   <td style="text-align:left;max-width: 100; "> A collection of functions to simulate
  dice rolls and the like. In particular, experiments and exercises can
  be performed looking at combinations and permutations of values in dice
  rolls and coin flips, together with the corresponding frequencies of
  occurrences. When applying each function, the user has to input the
  number of times (rolls, flips) to toss the dice. Needless to say, the more
  the tosses, the more the frequencies approximate the actual probabilities.
  Moreover, the package provides functions to generate non-transitive sets
  of dice (like Efron's) and to check whether a given set of dice is non-transitive
  with given probability. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> read.gt3x </td>
   <td style="text-align:left;max-width: 100; "> Implements a high performance C++ parser 
    for 'ActiGraph' 'GT3X'/'GT3X+' data format (with extension '.gt3x') 
    for 'accelerometer' samples. Activity samples can be easily read into a
    matrix or data.frame.  This allows for storing the raw 'accelerometer' 
    samples in the original binary format to reserve space. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> shuffleCI </td>
   <td style="text-align:left;max-width: 100; "> Scripts and exercises that use card shuffling to teach confidence interval comparisons for different estimators. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sojourn </td>
   <td style="text-align:left;max-width: 100; "> Provides a simple way for utilizing Sojourn methods for
    accelerometer processing, as detailed in Lyden K, Keadle S,
    Staudenmayer J, &amp; Freedson P (2014) &lt;doi:10.1249/MSS.0b013e3182a42a2d&gt;,
    Ellingson LD, Schwabacher IJ, Kim Y, Welk GJ, &amp; Cook DB (2016)
    &lt;doi:10.1249/MSS.0000000000000915&gt;, and Hibbing PR, Ellingson LD,
    Dixon PM, &amp; Welk GJ (2018) &lt;doi:10.1249/MSS.0000000000001486&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sojourn.Data </td>
   <td style="text-align:left;max-width: 100; "> Stores objects (e.g. neural networks) that are needed for
    using Sojourn accelerometer methods. For more information, see
    Lyden K, Keadle S, Staudenmayer J, &amp; Freedson P (2014)
    &lt;doi:10.1249/MSS.0b013e3182a42a2d&gt;, Ellingson LD, Schwabacher IJ,
    Kim Y, Welk GJ, &amp; Cook DB (2016) &lt;doi:10.1249/MSS.0000000000000915&gt;,
    and Hibbing PR, Ellingson LD, Dixon PM, &amp; Welk GJ (2018)
    &lt;doi:10.1249/MSS.0000000000001486&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SwimmeR </td>
   <td style="text-align:left;max-width: 100; "> The goal for of the 'SwimmeR' package is to provide means of acquiring, and then analyzing, data from swimming (and diving) competitions.  To that end 'SwimmeR' allows results to be read in from .html sources, like 'Hy-Tek' real time results pages, '.pdf' files, 'ISL' results, and (on a development basis) '.hy3' files.  Once read in, 'SwimmeR' can convert swimming times (performances) between the computationally useful format of seconds reported to the '100ths' place (e.g. 95.37), and the conventional reporting format (1:35.37) used in the swimming community.  'SwimmeR' can also score meets in a variety of formats with user defined point values, convert times between courses ('LCM', 'SCM', 'SCY') and draw single elimination brackets, as well as providing a suite of tools for working cleaning swimming data.  This is a developmental package, not yet mature. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tempcyclesdata </td>
   <td style="text-align:left;max-width: 100; "> This is the data companion package to the package tempcycles.
    This package includes the metadata, linear, and cycling parameters from
    "Recent geographic convergence in diurnal and annual temperature cycling
    flattens global thermal profiles", Wang &amp; Dillon, Nature Climate Change,
    4, 988-992 (2014). doi:10.1038/nclimate2378. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TLBC </td>
   <td style="text-align:left;max-width: 100; "> Contains functions for training and applying two-level random forest and hidden Markov models for human behavior classification from raw tri-axial accelerometer and/or GPS data. Includes functions for training a two-level model, applying the model to data, and computing performance. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> trackeR </td>
   <td style="text-align:left;max-width: 100; "> Provides infrastructure for handling running, cycling and swimming data from GPS-enabled tracking devices within R. The package provides methods to extract, clean and organise workout and competition data into session-based and unit-aware data objects of class 'trackeRdata' (S3 class). The information can then be visualised, summarised, and analysed through flexible and extensible methods. Frick and Kosmidis (2017) &lt;doi: 10.18637/jss.v082.i07&gt;, which is updated and maintained as one of the vignettes, provides detailed descriptions of the package and its methods, and real-data demonstrations of the package functionality. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> trackeRapp </td>
   <td style="text-align:left;max-width: 100; "> Provides an integrated user interface and workflow for
             the analysis of running, cycling and swimming data from GPS-enabled
             tracking devices through the 'trackeR' &lt;https://CRAN.R-project.org/package=trackeR&gt; R package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TrackReconstruction </td>
   <td style="text-align:left;max-width: 100; "> Reconstructs animal tracks from magnetometer, accelerometer, depth and optional speed data.  Designed primarily using data from Wildlife Computers Daily Diary tags deployed on northern fur seals. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tutorial </td>
   <td style="text-align:left;max-width: 100; "> DataCamp Light (&lt;https://github.com/datacamp/datacamp-light&gt;) is a light-weight implementation of the DataCamp UI,
  that allows you to embed interactive exercises inside HTML documents. The tutorial package makes it easy to create these
  HTML files from R Markdown files. An extension to knitr, tutorial detects appropriately formatted code chunks and replaces them
  with DataCamp Light readable chunks in the resulting HTML file. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> vctrs </td>
   <td style="text-align:left;max-width: 100; "> Defines new notions of prototype and size that are
    used to provide tools for consistent and well-founded type-coercion
    and size-recycling, and are in turn connected to ideas of type- and
    size-stability useful for analysing function interfaces. </td>
  </tr>
</tbody>
</table>

