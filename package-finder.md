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
date: '2023-06-15'
output:
      html_document:
        keep_md: true
---



## Creating a task view for physical activity researchers

First step is use the `cranly` package to see what is out there. I found this tutorial to help https://rviews.rstudio.com/2018/05/31/exploring-r-packages/. Now I have a tidy dataframe with all the packages. 



``` r
library(cranly)
package_db <- clean_CRAN_db(tools::CRAN_package_db())
```

## Search dataframe for physical activity related packages

I have used the search terms outlined in the code below. The search attempts to capture packages related to human activity recognition using both research devices and accelerometer or GPS data AND analysis of data form commercial devices (e.g., Fitbit). 

I had originally included the term `exercise` but that search included many packages that were not related to human activity recognition. I also did the same search in title but that did not help and only returned 1 result that was already captured in the description search. 


``` r
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

``` r
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


``` r
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
        "accelerometer", 
        "human activity recognition",
        "global positionning sytems",
        "wahoo",
        "whoop",
        "suunto",
        "human activity"
    )

package_db$pa <- str_extract_all(package_db$description, paste(pa_search, collapse = "|"))

pa_packages <- filter(package_db, pa != "character(0)")
```

From this search there are 83 packages are designed to analyse some type of physical activity data.




``` r
pa_pkg_names <- pa_packages$package
```

## Packages' description


``` r
pa_packages %>% select(package, description) %>%
   kable() %>%
   kable_styling("striped", full_width = FALSE) %>% 
   column_spec(2, width_max = 50)
```

<table class="table table-striped" style="color: black; width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> package </th>
   <th style="text-align:left;"> description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> acc </td>
   <td style="text-align:left;max-width: 50; "> Processes accelerometer data from uni-axial and tri-axial devices,
    and generates data summaries. Also includes functions to plot, analyze, and
    simulate accelerometer data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> accelerometry </td>
   <td style="text-align:left;max-width: 50; "> A collection of functions that perform operations on time-series accelerometer data, such as identify non-wear time, flag minutes that are part of an activity bout, and find the maximum 10-minute average count value. The functions are generally very flexible, allowing for a variety of algorithms to be implemented. Most of the functions are written in C++ for efficiency. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> accelmissing </td>
   <td style="text-align:left;max-width: 50; "> Imputation for the missing count values in accelerometer data. The methodology includes both parametric and semi-parametric multiple imputations under the zero-inflated Poisson lognormal model. This package also provides multiple functions to pre-process the accelerometer data previous to the missing data imputation. These includes detecting wearing and non-wearing time, selecting valid days and subjects, and creating plots. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ActFrag </td>
   <td style="text-align:left;max-width: 50; "> Recent studies haven shown that, on top of total daily active/sedentary volumes, the time 
  accumulation strategies provide more sensitive information. This package provides functions to extract 
  commonly used fragmentation metrics to quantify such time accumulation strategies based on minute level 
  actigraphy-measured activity counts data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> actilifecounts </td>
   <td style="text-align:left;max-width: 50; "> A tool to obtain activity counts, originally a translation of the 
  'python' package 'agcounts' &lt;https://github.com/actigraph/agcounts&gt;. This tool
  allows the processing of data from any accelerometer brand, with a more flexible 
  approach to handle different sampling frequencies. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ActiSleep </td>
   <td style="text-align:left;max-width: 50; "> Provides sleep duration estimates using a Pruned Dynamic
  Programming (PDP) algorithm that efficiently identifies
  change-points. PDP applied to physical activity data can identify
  transitions from wakefulness to sleep and vice versa. Baek, Jonggyu, Banker,
  Margaret, Jansen, Erica C., She, Xichen, Peterson, Karen E., Pitchford,
  E. Andrew, Song, Peter X. K. (2021) An Efficient Segmentation Algorithm to
  Estimate Sleep Duration from Actigraphy Data &lt;doi:10.1007/s12561-021-09309-3&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> activAnalyzer </td>
   <td style="text-align:left;max-width: 50; "> A tool to analyse 'ActiGraph' accelerometer data and to implement 
    the use of the PROactive Physical Activity in COPD (chronic obstructive pulmonary disease) instruments. Once analysis
    is completed, the app allows to export results to .csv files and to generate
    a report of the measurement. All the configured inputs relevant for interpreting
    the results are recorded in the report. In addition to the existing 'R' packages 
    that are fully integrated with the app, the app uses some functions from the 
    'actigraph.sleepr' package developed by Petkova (2021) &lt;https://github.com/dipetkov/actigraph.sleepr/&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> activPAL </td>
   <td style="text-align:left;max-width: 50; "> Contains functions to generate pre-defined summary statistics from activPAL
    events files &lt;http:www.palt.com&gt;.  The package also contains functions to produce informative 
    graphics that visualise physical activity behaviour and trends.  This includes
    generating graphs that align physical activity behaviour with additional time based 
    observations described by other data sets, such as sleep diaries and continuous glucose 
    monitoring data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> adept </td>
   <td style="text-align:left;max-width: 50; "> Designed for optimal use in performing fast, 
    accurate walking strides segmentation from high-density 
    data collected from a wearable accelerometer worn 
    during continuous walking activity. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> agcounts </td>
   <td style="text-align:left;max-width: 50; "> Calculate 'ActiGraph' counts from the X, Y, and Z axes of a triaxial 
    accelerometer. This work was inspired by Neishabouri et al. who published the 
    article "Quantification of Acceleration as Activity Counts in 'ActiGraph' Wearables" 
    on February 24, 2022. The link to the article (&lt;https://pubmed.ncbi.nlm.nih.gov/35831446&gt;) 
    and 'python' implementation of this code (&lt;https://github.com/actigraph/agcounts&gt;). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> airGRteaching </td>
   <td style="text-align:left;max-width: 50; "> Add-on package to the 'airGR' package that simplifies its use and is aimed at being used for teaching hydrology. The package provides 1) three functions that allow to complete very simply a hydrological modelling exercise 2) plotting functions to help students to explore observed data and to interpret the results of calibration and simulation of the GR ('Génie rural') models 3) a 'Shiny' graphical interface that allows for displaying the impact of model parameters on hydrographs and models internal variables. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> AMCP </td>
   <td style="text-align:left;max-width: 50; "> Accompanies the book "Designing experiments and 
    analyzing data: A model comparison perspective" (3rd ed.) by 
    Maxwell, Delaney, &amp; Kelley (2018; Routledge). 
    Contains all of the data sets in the book's chapters and 
    end-of-chapter exercises. Information about the book is available at 
    &lt;https://designingexperiments.com/&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> arctools </td>
   <td style="text-align:left;max-width: 50; "> Provides functions to process minute level actigraphy-measured activity counts data and extract commonly used physical activity volume and fragmentation metrics. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> astrodatR </td>
   <td style="text-align:left;max-width: 50; "> A collection of 19 datasets from contemporary astronomical research.  They are described the textbook `Modern Statistical Methods for Astronomy with R Applications' by Eric D. Feigelson and G. Jogesh Babu (Cambridge University Press, 2012, Appendix C) or on the website of Penn State's Center for Astrostatistics (http://astrostatistics.psu.edu/datasets).  These datasets can be used to exercise methodology involving: density estimation; heteroscedastic measurement errors; contingency tables; two-sample hypothesis tests; spatial point processes; nonlinear regression; mixture models; censoring and truncation; multivariate analysis; classification and clustering; inhomogeneous Poisson processes; periodic and stochastic time series analysis. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> biologicalActivityIndices </td>
   <td style="text-align:left;max-width: 50; "> Ecological alteration of degraded lands can improve their sustainability by addition of large amount of biomass to soil resulting in improved soil health. Soil biological parameters (such as carbon, nitrogen and phosphorus cycling enzyme activity) are reactive to minute variations in soils [Ghosh et al. (2021) &lt;doi:10.1016/j.ecoleng.2021.106176&gt; ]. Hence, biological activity index combining Urease, Alkaline Phosphatase, Dehydrogenase (DHA) &amp; Beta-Glucosidase activity will assist in detecting early changes in restored land use systems [Patidar et al. (2023) &lt;doi:10.3389/fsufs.2023.1230156&gt;]. This package helps to calculate Biological Activity Index (BAI) based on vectors of Land Use System/treatment and control/reference Land Use System containing four values of Urease, Alkaline Phosphatase, DHA &amp; Beta-Glucosidase. (DHA), urease (URE), fluorescein diacetate hydrolysis (FDA) and alkaline phosphatase (ALP) activities are measured in soil samples using triphenyl tetrazolium chloride, urea, fluorescein diacetate and p-nitro phenyl-phosphate as substrates, respectively. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> biosensors.usc </td>
   <td style="text-align:left;max-width: 50; "> Unified and user-friendly framework for using new 
             distributional representations of biosensors data in different statistical modeling 
             tasks: regression models, hypothesis testing, cluster analysis, visualization, and 
             descriptive analysis. Distributional representations are a functional extension of 
             compositional time-range metrics and we have used them successfully so far in modeling 
             glucose profiles and accelerometer data. However, these functional representations can 
             be used to represent any biosensor data such as ECG or medical imaging such as fMRI.
             Matabuena M, Petersen A, Vidal JC, Gude F. "Glucodensities: A new representation of 
             glucose profiles using distributional data analysis" (2021) 
             &lt;doi:10.1177/0962280221998064&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Biostatistics </td>
   <td style="text-align:left;max-width: 50; "> Tutorials for statistics, aimed at biological scientists. 
    Subjects range from basic descriptive statistics 
    through to complex linear modelling. The tutorials
    include text, videos, interactive coding exercises
    and multiple choice quizzes. The package also 
    includes 19 datasets which are used in the 
    tutorials. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ConvergenceConcepts </td>
   <td style="text-align:left;max-width: 50; "> This is a pedagogical package, designed to help students understanding convergence of
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
   <td style="text-align:left;max-width: 50; "> Track and report code coverage for your package and (optionally)
    upload the results to a coverage service like 'Codecov' &lt;https://about.codecov.io&gt; or
    'Coveralls' &lt;https://coveralls.io&gt;. Code coverage is a measure of the amount of
    code being exercised by a set of tests. It is an indirect measure of test
    quality and completeness. This package is compatible with any testing
    methodology or framework and tracks coverage of both R code and compiled
    C/C++/FORTRAN code. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DAAG </td>
   <td style="text-align:left;max-width: 50; "> Functions and data sets used in examples and exercises in the
        text Maindonald, J.H. and Braun, W.J. (2003, 2007, 2010) "Data
        Analysis and Graphics Using R", and in an upcoming Maindonald,
        Braun, and Andrews text that builds on this earlier text. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DescTools </td>
   <td style="text-align:left;max-width: 50; "> A collection of miscellaneous basic statistic functions and convenience wrappers for efficiently describing data. The author's intention was to create a toolbox, which facilitates the (notoriously time consuming) first descriptive tasks in data analysis, consisting of calculating descriptive statistics, drawing graphical summaries and reporting the results. The package contains furthermore functions to produce documents using MS Word (or PowerPoint) and functions to import data from Excel. Many of the included functions can be found scattered in other packages and other sources written partly by Titans of R. The reason for collecting them here, was primarily to have them consolidated in ONE instead of dozens of packages (which themselves might depend on other packages which are not needed at all), and to provide a common and consistent interface as far as function and arguments naming, NA handling, recycling rules etc. are concerned. Google style guides were used as naming rules (in absence of convincing alternatives). The 'BigCamelCase' style was consequently applied to functions borrowed from contributed R packages as well. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> desk </td>
   <td style="text-align:left;max-width: 50; "> Written to help undergraduate as well as graduate students to get started
    with R for basic econometrics without the need to import specific functions
    and datasets from many different sources. Primarily, the package is meant to 
    accompany the German textbook Auer, L.v., Hoffmann, S., Kranz, T. (2024,
    ISBN: 978-3-662-68263-0) from which the exercises cover all the topics from the textbook
    Auer, L.v. (2023, ISBN: 978-3-658-42699-6). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ds4psy </td>
   <td style="text-align:left;max-width: 50; "> All datasets and functions required for the examples and exercises of the book "Data Science for Psychologists" (by Hansjoerg Neth, Konstanz University, 2022), available at &lt;https://bookdown.org/hneth/ds4psy/&gt;. The book and course introduce principles and methods of data science to students of psychology and other biological or social sciences. The 'ds4psy' package primarily provides datasets, but also functions for data generation and manipulation (e.g., of text and time data) and graphics that are used in the book and its exercises. All functions included in 'ds4psy' are designed to be explicit and instructive, rather than efficient or elegant. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> dsample </td>
   <td style="text-align:left;max-width: 50; "> Discretization-based random sampling algorithm that is useful for a complex model in high dimension is implemented. The normalizing constant of a target distribution is not needed. Posterior summaries are compared with those by 'OpenBUGS'. The method is described: Wang and Lee (2014) &lt;doi:10.1016/j.csda.2013.06.011&gt; and exercised in Lee (2009) &lt;http://hdl.handle.net/1993/21352&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ecostats </td>
   <td style="text-align:left;max-width: 50; "> Functions and data supporting the Eco-Stats text (Warton, 2022, Springer), and solutions to exercises. Functions include tools for using simulation envelopes in diagnostic plots, and a function for diagnostic plots of multivariate linear models. Datasets mentioned in the package are included here (where not available elsewhere) and there is a vignette for each chapter of the text with solutions to exercises. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> edcpR </td>
   <td style="text-align:left;max-width: 50; "> This is the course package for the exercise portion of the "Ecological Data Collection and Processing" course. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> eddington </td>
   <td style="text-align:left;max-width: 50; "> Compute a cyclist's Eddington number, including efficiently
    computing cumulative E over a vector. A cyclist's Eddington number
    &lt;https://en.wikipedia.org/wiki/Arthur_Eddington#Eddington_number_for_cycling&gt;
    is the maximum number satisfying the condition such that a cyclist has
    ridden E miles or greater on E distinct days. The algorithm in this package
    is an improvement over the conventional approach because both summary
    statistics and cumulative statistics can be computed in linear time, since
    it does not require initial sorting of the data. These functions may also be
    used for computing h-indices for authors, a metric described by Hirsch (2005)
    &lt;doi:10.1073/pnas.0507655102&gt;. Both are specific applications of computing
    the side length of a Durfee square &lt;https://en.wikipedia.org/wiki/Durfee_square&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> exams </td>
   <td style="text-align:left;max-width: 50; "> Automatic generation of exams based on exercises in Markdown or LaTeX format,
	possibly including R code for dynamic generation of exercise elements.
	Exercise types include single-choice and multiple-choice questions, arithmetic problems,
	string questions, and combinations thereof (cloze). Output formats include standalone
	files (PDF, HTML, Docx, ODT, ...), Moodle XML, QTI 1.2, QTI 2.1, Blackboard, Canvas, OpenOlat, ILIAS, TestVision,
	Particify, ARSnova, Kahoot!, Grasple, and TCExam. In addition to fully customizable PDF exams, a standardized PDF format
	(NOPS) is provided that can be printed, scanned, and automatically evaluated. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> exams.forge </td>
   <td style="text-align:left;max-width: 50; "> The main aim is to further facilitate the creation of exercises based on the package 'exams' 
    by Grün, B., and Zeileis, A. (2009) &lt;doi:10.18637/jss.v029.i10&gt;. Creating effective student exercises 
    involves challenges such as creating appropriate data sets and ensuring access to intermediate values 
    for accurate explanation of solutions. The functionality includes the generation of univariate and 
    bivariate data including simple time series, functions for theoretical distributions and their approximation, 
    statistical and mathematical calculations for tasks in basic statistics courses as well as general tasks 
    such as string manipulation, LaTeX/HTML formatting and the editing of XML task files for 'Moodle'. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> exams2forms </td>
   <td style="text-align:left;max-width: 50; "> Automatic generation of quizzes or individual questions as (interactive) forms within 'rmarkdown' or 'quarto' documents based on 'R/exams' exercises. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> exams2learnr </td>
   <td style="text-align:left;max-width: 50; "> Automatic generation of quizzes or individual questions for 'learnr' tutorials based on 'R/exams' exercises. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> eyeRead </td>
   <td style="text-align:left;max-width: 50; "> Functions to prepare and analyse eye tracking data of reading
  exercises. The functions allow some basic data preparations and code fixations 
  as first and second pass. First passes can be further devided into forward and 
  reading. The package further allows for aggregating fixation times per AOI or 
  per AOI and per type of pass (first forward, first rereading, second). These 
  methods are based on Hyönä, Lorch, and Rinck (2003) &lt;doi:10.1016/B978-044451020-4/50018-9&gt; 
  and Hyönä, and Lorch (2004) &lt;doi:10.1016/j.learninstruc.2004.01.001&gt;. It is 
  also possible to convert between metric length and visual degrees. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fitbitr </td>
   <td style="text-align:left;max-width: 50; "> Many 'Fitbit' users, and R-friendly 'Fitbit' users
    especially, have found themselves curious about their 'Fitbit' data.
    'Fitbit' aggregates a large amount of personal data, much of which is
    interesting for personal research and to satisfy curiosity, and is
    even potentially useful in medical settings. The goal of 'fitbitr' is
    to make interfacing with the 'Fitbit' API as streamlined as possible,
    to make it simple for R users of all backgrounds and comfort levels to
    analyze their 'Fitbit' data and do whatever they want with it!
    Currently, 'fitbitr' includes methods for pulling data on activity,
    sleep, and heart rate, but this list is likely to grow in the future
    as the package gains more traction and more requests for new methods
    to be implemented come in.  You can find details on the 'Fitbit' API
    at &lt;https://dev.fitbit.com/build/reference/web-api/&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fitbitScraper </td>
   <td style="text-align:left;max-width: 50; "> Scrapes data from Fitbit &lt;http://www.fitbit.com&gt;. This does not use the official
    API, but instead uses the API that the web dashboard uses to generate the graphs
    displayed on the dashboard after login at &lt;http://www.fitbit.com&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fitbitViz </td>
   <td style="text-align:left;max-width: 50; "> Connection to the 'Fitbit' Web API &lt;https://dev.fitbit.com/build/reference/web-api/&gt; by including 'ggplot2' Visualizations, 'Leaflet' and 3-dimensional 'Rayshader' Maps. The 3-dimensional 'Rayshader' Map requires the installation of the 'CopernicusDEM' R package which includes the 30- and 90-meter elevation data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fpp </td>
   <td style="text-align:left;max-width: 50; "> All data sets required for the examples and exercises in
        the book "Forecasting: principles and practice" by Rob J
        Hyndman and George Athanasopoulos. All packages required to run
        the examples are also loaded. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fpp2 </td>
   <td style="text-align:left;max-width: 50; "> All data sets required for the examples and exercises
  in the book "Forecasting: principles and practice" (2nd ed, 2018)
  by Rob J Hyndman and George Athanasopoulos &lt;https://otexts.com/fpp2/&gt;.
  All packages required to run the examples are also loaded. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fpp3 </td>
   <td style="text-align:left;max-width: 50; "> All data sets required for the examples and exercises in the book
    "Forecasting: principles and practice" by Rob J Hyndman and George Athanasopoulos
    &lt;https://OTexts.com/fpp3/&gt;. All packages required to run the examples are also
    loaded. Additional data sets not used in the book are also included. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gconsensus </td>
   <td style="text-align:left;max-width: 50; "> An implementation of the International Bureau of Weights and Measures (BIPM) generalized consensus estimators used to assign the reference value in a key comparison exercise. This can also be applied to any interlaboratory study. Given a set of different sources, primary laboratories or measurement methods this package provides an evaluation of the variance components according to the selected statistical method for consensus building. It also implements the comparison among different consensus builders and evaluates the participating method or sources against the consensus reference value. Based on a diverse set of references, DerSimonian-Laird (1986) &lt;doi:10.1016/0197-2456(86)90046-2&gt;, for a complete list of references look at the reference section in the package documentation. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GENEAclassify </td>
   <td style="text-align:left;max-width: 50; "> Segmentation and classification procedures for data from the 'Activinsights GENEActiv' &lt;https://activinsights.com/technology/geneactiv/&gt; accelerometer that provides the user with a model to guess behaviour from test data where behaviour is missing.
    Includes a step counting algorithm, a function to create segmented data with custom features and a function to use recursive partitioning provided in the function rpart() of the 'rpart' package to create classification models. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GENEAread </td>
   <td style="text-align:left;max-width: 50; "> Functions and analytics for GENEA-compatible accelerometer data into R objects. 
             See topic 'GENEAread' for an introduction to the package. 
             See &lt;https://activinsights.com/technology/geneactiv/&gt; for more details on the GENEActiv device. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GGIR </td>
   <td style="text-align:left;max-width: 50; "> A tool to process and analyse data collected with wearable raw acceleration sensors as described in Migueles and colleagues (JMPB 2019), and van Hees and colleagues (JApplPhysiol 2014; PLoSONE 2015). The package has been developed and tested for binary data from 'GENEActiv' &lt;https://activinsights.com/&gt;, binary (.gt3x) and .csv-export data from  'Actigraph' &lt;https://theactigraph.com&gt; devices, and binary (.cwa) and .csv-export data from 'Axivity' &lt;https://axivity.com&gt;. These devices are currently widely used in research on human daily physical activity. Further, the package can handle accelerometer data file from any other sensor brand providing that the data is stored in csv format. Also the package allows for external function embedding. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GGIRread </td>
   <td style="text-align:left;max-width: 50; "> Reads data collected from wearable acceleratometers as used in sleep and physical activity research. Currently supports file formats: binary data from 'GENEActiv' &lt;https://activinsights.com/&gt;, .bin-format from GENEA devices (not for sale), and .cwa-format from 'Axivity' &lt;https://axivity.com&gt;. Further, it has functions for reading text files with epoch level aggregates from 'Actical', 'Fitbit', 'Actiwatch', 'ActiGraph', and 'PhilipsHealthBand'. Primarily designed to complement R package GGIR &lt;https://CRAN.R-project.org/package=GGIR&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> gmapsdistance </td>
   <td style="text-align:left;max-width: 50; "> Get distance and travel time between two points from Google Maps.
    Four possible modes of transportation (bicycling, walking, driving and
    public transportation). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HDSinRdata </td>
   <td style="text-align:left;max-width: 50; "> Contains ten datasets used in the chapters and exercises of Paul, Alice (2023) "Health Data Science in R" &lt;https://alicepaul.github.io/health-data-science-using-r/&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> heatex </td>
   <td style="text-align:left;max-width: 50; "> The heatex package calculates heat storage in the body and
        the components of heat exchange (conductive, convective,
        radiative, and evaporative) between the body and the
        environment during physical activity based on the principles of
        partitional calorimetry. The program enables heat exchange
        calculations for a range of environmental conditions when
        wearing various clothing ensembles. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HH </td>
   <td style="text-align:left;max-width: 50; "> Support software for Statistical Analysis and Data Display (Second Edition, Springer, ISBN 978-1-4939-2121-8, 2015) and (First Edition, Springer, ISBN 0-387-40270-5, 2004) by Richard M. Heiberger and Burt Holland.  This contemporary presentation of statistical methods features extensive use of graphical displays for exploring data and for displaying the analysis.  The second edition includes redesigned graphics and additional chapters. The authors emphasize how to construct and interpret graphs, discuss principles of graphical design, and show how accompanying traditional tabular results are used to confirm the visual impressions derived directly from the graphs. Many of the graphical formats are novel and appear here for the first time in print.  All chapters have exercises.  All functions introduced in the book are in the package.  R code for all examples, both graphs and tables, in the book is included in the scripts directory of the package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HMMpa </td>
   <td style="text-align:left;max-width: 50; "> Analysing time-series accelerometer data to quantify length and 
             intensity of physical activity using hidden Markov models. 
             It also contains the traditional cut-off point method.
             Witowski V, Foraita R, Pitsiladis Y, Pigeot I, Wirsik N (2014).
             &lt;doi:10.1371/journal.pone.0114089&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> IIS </td>
   <td style="text-align:left;max-width: 50; "> These datasets and functions accompany Wolfe and Schneider (2017) - Intuitive Introductory Statistics (ISBN:  978-3-319-56070-0) &lt;doi:10.1007/978-3-319-56072-4&gt;. They are used in the examples throughout the text and in the end-of-chapter exercises. The datasets are meant to cover a broad range of topics in order to appeal to the diverse set of interests and backgrounds typically present in an introductory Statistics class. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> impactr </td>
   <td style="text-align:left;max-width: 50; "> Functions to read, process and analyse accelerometer
    data related to mechanical loading variables. This package is
    developed and tested for use with raw accelerometer data from
    triaxial 'ActiGraph' &lt;https://theactigraph.com&gt; accelerometers. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> imuf </td>
   <td style="text-align:left;max-width: 50; "> Estimate the orientation of an inertial measurement unit 
    (IMU) with a 3-axis accelerometer and a 3-axis gyroscope using a 
    complementary filter. 'imuf' takes an IMU's accelerometer and gyroscope 
    readings, time duration, its initial orientation, and a gain factor as 
    inputs, and returns an estimate of the IMU's final orientation. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ISwR </td>
   <td style="text-align:left;max-width: 50; "> Data sets and scripts for text examples and exercises in 
  P. Dalgaard (2008), `Introductory Statistics with R', 2nd ed., Springer Verlag, ISBN 978-0387790534. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> kgc </td>
   <td style="text-align:left;max-width: 50; "> Aids in identifying the Koeppen-Geiger (KG) climatic zone for 
    a given location. The Koeppen-Geiger climate zones were first published in 1884, as a system
    to classify regions of the earth by their relative heat and humidity through the year, for 
    the benefit of human health, plant and agriculture and other human activity [1]. This climate
    zone classification system, applicable to all of the earths surface, has continued to be 
    developed by scientists up to the present day.  Recently one of use (FZ) has published updated,
    higher accuracy KG climate zone definitions [2]. In this package we use these updated 
    high-resolution maps as the data source [3]. We provide functions that return the KG climate zone 
    for a given longitude and lattitude, or for a given United States zip code. In addition
    the CZUncertainty() function will check climate zones nearby to check if the given location
    is near a climate zone boundary. In addition an interactive shiny app is provided to define 
    the KG climate zone for a given longitude and lattitude, or United States zip code. 
    Digital data, as well as animated maps, showing the shift of the climate zones are provided 
    on the following website &lt;http://koeppen-geiger.vu-wien.ac.at&gt;.
    This work was supported by the DOE-EERE SunShot award DE-EE-0007140.
     [1] W. Koeppen, (2011) &lt;doi:10.1127/0941-2948/2011/105&gt;.
     [2] F. Rubel and M. Kottek, (2010) &lt;doi:10.1127/0941-2948/2010/0430&gt;.
     [3] F. Rubel, K. Brugger, K. Haslinger, and I. Auer, (2016) &lt;doi:10.1127/metz/2016/0816&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lactater </td>
   <td style="text-align:left;max-width: 50; "> Set of tools for analyzing lactate thresholds from a step incremental test to exhaustion. Easily analyze
    the methods Log-log, Onset of Blood Lactate Accumulation (OBLA), Baseline plus (Bsln+), Dmax, Lactate Turning Point (LTP),
    and Lactate / Intensity ratio (LTratio) in cycling, running, or swimming.
    Beaver WL, Wasserman K, Whipp BJ (1985) &lt;doi:10.1152/jappl.1985.59.6.1936&gt;.
    Heck H, Mader A, Hess G, Mücke S, Müller R, Hollmann W (1985) &lt;doi:10.1055/s-2008-1025824&gt;.
    Kindermann W, Simon G, Keul J (1979) &lt;doi:10.1007/BF00421101&gt;.
    Skinner JS, Mclellan TH (1980) &lt;doi:10.1080/02701367.1980.10609285&gt;.
    Berg A, Jakob E, Lehmann M, Dickhuth HH, Huber G, Keul J (1990) PMID 2408033.
    Zoladz JA, Rademaker AC, Sargeant AJ (1995) &lt;doi:10.1113/jphysiol.1995.sp020959&gt;.
    Cheng B, Kuipers H, Snyder A, Keizer H, Jeukendrup A, Hesselink M (1992) &lt;doi:10.1055/s-2007-1021309&gt;.
    Bishop D, Jenkins DG, Mackinnon LT (1998) &lt;doi:10.1097/00005768-199808000-00014&gt;.
    Hughson RL, Weisiger KH, Swanson GD (1987) &lt;doi:10.1152/jappl.1987.62.5.1975&gt;.
    Jamnick NA, Botella J, Pyne DB, Bishop DJ (2018) &lt;doi:10.1371/journal.pone.0199794&gt;.
    Hofmann P, Tschakert G (2017) &lt;doi:10.3389/fphys.2017.00337&gt;.
    Hofmann P, Pokan R, von Duvillard SP, Seibert FJ, Zweiker R, Schmid P (1997) &lt;doi:10.1097/00005768-199706000-00005&gt;.
    Pokan R, Hofmann P, Von Duvillard SP, et al. (1997) &lt;doi:10.1097/00005768-199708000-00009&gt;.
    Dickhuth H-H, Yin L, Niess A, et al. (1999) &lt;doi:10.1055/s-2007-971105&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lagged </td>
   <td style="text-align:left;max-width: 50; "> Provides classes and methods for objects, whose indexing
      naturally starts from zero. Subsetting, indexing and mathematical
      operations are defined naturally between lagged objects and lagged
      and base R objects. Recycling is not used, except for singletons.
      The single bracket operator doesn't drop dimensions by default. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LearningRlab </td>
   <td style="text-align:left;max-width: 50; "> Aids in learning statistical functions incorporating the result of calculus done with each function and how they are obtained, that is, which equation and variables are used. Also for all these equations and their related variables detailed explanations and interactive exercises are also included. All these characteristics allow to the package user to improve the learning of statistics basics by means of their use. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> learnr </td>
   <td style="text-align:left;max-width: 50; "> Create interactive tutorials using R Markdown. Use a
    combination of narrative, figures, videos, exercises, and quizzes to
    create self-paced tutorials for learning about R and R packages. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LexisNexisTools </td>
   <td style="text-align:left;max-width: 50; "> My PhD supervisor once told me that everyone doing newspaper
    analysis starts by writing code to read in files from the 'LexisNexis' newspaper
    archive (retrieved e.g., from &lt;https://www.lexisnexis.com/&gt; or any of the partner
    sites). However, while this is a nice exercise I do recommend, not everyone has
    the time. This package takes files downloaded from the newspaper archive of
    'LexisNexis', reads them into R and offers functions for further processing. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> lifelogr </td>
   <td style="text-align:left;max-width: 50; "> Provides a framework for combining self-data (exercise, sleep, etc.) from multiple sources (fitbit, Apple Health), creating visualizations, and experimenting on onself. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LSMRealOptions </td>
   <td style="text-align:left;max-width: 50; "> The least-squares Monte Carlo (LSM) simulation method is a popular method for the approximation of the value of early and multiple exercise options. 'LSMRealOptions' provides implementations of the LSM simulation method to value American option products and capital investment projects through real options analysis. 'LSMRealOptions' values capital investment projects with cash flows dependent upon underlying state variables that are stochastically evolving, providing analysis into the timing and critical values at which investment is optimal. 'LSMRealOptions' provides flexibility in the stochastic processes followed by underlying assets, the number of state variables, basis functions and underlying asset characteristics to allow a broad range of assets to be valued through the LSM simulation method. Real options projects are further able to be valued whilst considering construction periods, time-varying initial capital expenditures and path-dependent operational flexibility including the ability to temporarily shutdown or permanently abandon projects after initial investment has occurred. The LSM simulation method was first presented in the prolific work of Longstaff and Schwartz (2001) &lt;doi:10.1093/rfs/14.1.113&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mdsr </td>
   <td style="text-align:left;max-width: 50; "> A complement to all editions of *Modern Data
    Science with R* 
     (ISBN: 978-0367191498, publisher URL: 
    &lt;https://www.routledge.com/Modern-Data-Science-with-R/Baumer-Kaplan-Horton/p/book/9780367191498&gt;).
    This package contains data and code to complete exercises and 
    reproduce examples from the text. It also facilitates connections 
    to the SQL database server used in the book. All editions of the book are 
    supported by this package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MFO </td>
   <td style="text-align:left;max-width: 50; "> Calculate the maximal fat oxidation, the exercise intensity that elicits the 
              maximal fat oxidation and the SIN model to represent the fat oxidation kinetics. 
              Three variables can be obtained from the SIN model: dilatation, symmetry and translation. 
              Examples of these methods can be found in Montes de Oca et al (2021) &lt;doi:10.1080/17461391.2020.1788650&gt;
              and Chenevière et al. (2009) &lt;doi:10.1249/MSS.0b013e31819e2f91&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MIMSunit </td>
   <td style="text-align:left;max-width: 50; "> The MIMS-unit algorithm is developed to compute Monitor Independent
    Movement Summary Unit, a measurement to summarize raw accelerometer data 
    while ensuring harmonized results across different devices. It also includes
    scripts to reproduce results in the related publication 
    (John, D., Tang. Q., Albinali, F. and Intille, S. (2019) &lt;doi:10.1123/jmpb.2018-0068&gt;). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mMARCH.AC </td>
   <td style="text-align:left;max-width: 50; "> Mobile Motor Activity Research Consortium for Health (mMARCH) is a collaborative network of studies of clinical and community samples that employ common clinical, biological, and digital mobile measures across involved studies. One of the main scientific goals of mMARCH sites is developing a better understanding of the inter-relationships between accelerometry-measured physical activity (PA), sleep (SL), and circadian rhythmicity (CR) and mental and physical health in children, adolescents, and adults. Currently, there is no consensus on a standard procedure for a data processing pipeline of raw accelerometry data, and few open-source tools to facilitate their development. The R package 'GGIR' is the most prominent open-source software package that offers great functionality and tremendous user flexibility to process raw accelerometry data. However, even with 'GGIR', processing done in a harmonized and reproducible fashion requires a non-trivial amount of expertise combined with a careful implementation. In addition, novel accelerometry-derived features of PA/SL/CR capturing multiscale, time-series, functional, distributional and other complimentary aspects of accelerometry data being constantly proposed and become available via non-GGIR R implementations.  To address these issues, mMARCH developed a streamlined harmonized and reproducible pipeline for loading and cleaning raw accelerometry data, extracting features available through 'GGIR' as well as through non-GGIR R packages, implementing several data and feature quality checks, merging all features of PA/SL/CR together, and performing multiple analyses including Joint Individual Variation Explained (JIVE), an unsupervised machine learning dimension reduction technique that identifies latent factors capturing joint across and individual to each of three domains of PA/SL/CR.  In detail, the pipeline generates all necessary R/Rmd/shell files for data processing after running 'GGIR' for accelerometer data. In module 1, all csv files in the 'GGIR' output directory were read, transformed and then merged. In module 2, the 'GGIR' output files were checked and summarized in one excel sheet. In module 3, the merged data was cleaned according to the number of valid hours on each night and the number of valid days for each subject. In module 4, the cleaned activity data was imputed by the average Euclidean norm minus one (ENMO) over all the valid days for each subject. Finally, a comprehensive report of data processing was created using Rmarkdown, and the report includes few exploratory plots and multiple commonly used features extracted from minute level actigraphy data.  Reference: Guo W, Leroux A, Shou S, Cui L, Kang S, Strippoli MP, Preisig M, Zipunnikov V, Merikangas K (2022) Processing of accelerometry data with GGIR in Motor Activity Research Consortium for Health (mMARCH) Journal for the Measurement of Physical Behaviour, 6(1): 37-44. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ModStatR </td>
   <td style="text-align:left;max-width: 50; "> Datasets and functions for the book "Modélisation statistique par la pratique avec R", F. Bertrand, E. Claeys and M. Maumy-Bertrand (2019, ISBN:9782100793525, Dunod, Paris). The first chapter of the book is dedicated to an introduction to the R statistical software. The second chapter deals with correlation analysis: Pearson, Spearman and Kendall simple, multiple and partial correlation coefficients. New wrapper functions for permutation tests or bootstrap of matrices of correlation are provided with the package. The third chapter is dedicated to data exploration with factorial analyses (PCA, CA, MCA, MDA) and clustering. The fourth chapter is dedicated to regression analysis: fitting and model diagnostics are detailed. The exercises focus on covariance analysis, logistic regression, Poisson regression, two-way analysis of variance for fixed or random factors. Various example datasets are shipped with the package: for instance on pokemon, world of warcraft, house tasks or food nutrition analyses. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> moose </td>
   <td style="text-align:left;max-width: 50; "> Projects mean squared out-of-sample error for a linear regression based upon the methodology developed in Rohlfs (2022) &lt;doi:10.48550/arXiv.2209.01493&gt;.  It consumes as inputs the lm object from an estimated OLS regression (based on the "training sample") and a data.frame of out-of-sample cases (the "test sample") that have non-missing values for the same predictors. The test sample may or may not include data on the outcome variable; if it does, that variable is not used. The aim of the exercise is to project what what mean squared out-of-sample error can be expected given the predictor values supplied in the test sample. Output consists of a list of three elements: the projected mean squared out-of-sample error, the projected out-of-sample R-squared, and a vector of out-of-sample "hat" or "leverage" values, as defined in the paper. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MPGE </td>
   <td style="text-align:left;max-width: 50; "> Interaction between a genetic variant (e.g., a single nucleotide polymorphism) and an environmental variable (e.g., physical activity) can have a shared effect on multiple phenotypes (e.g., blood lipids). We implement a two-step method to test for an overall interaction effect on multiple phenotypes. In first step, the method tests for an overall marginal genetic association between the genetic variant and the multivariate phenotype. The genetic variants which show an evidence of marginal overall genetic effect in the first step are prioritized while testing for an overall gene-environment interaction effect in the second step. Methodology is available from: A Majumdar, KS Burch, S Sankararaman, B Pasaniuc, WJ Gauderman, JS Witte (2020) &lt;doi:10.1101/2020.07.06.190256&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NFCP </td>
   <td style="text-align:left;max-width: 50; "> Commodity pricing models are (systems of) stochastic differential equations that are utilized for the valuation and hedging of commodity contingent claims (i.e. derivative products on the commodity) and other commodity related investments. Commodity pricing models that capture market dynamics are of great importance to commodity market participants in order to exercise sound investment and risk-management strategies. Parameters of commodity pricing models are estimated through maximum likelihood estimation, using available term structure futures data of a commodity. 'NFCP' (n-factor commodity pricing) provides a framework for the modeling, parameter estimation, probabilistic forecasting, option valuation and simulation of commodity prices through state space and Monte Carlo methods, risk-neutral valuation and Kalman filtering. 'NFCP' allows the commodity pricing model to consist of n correlated factors, with both random walk and mean-reverting elements. The n-factor commodity pricing model framework was first presented in the work of Cortazar and Naranjo (2006) &lt;doi:10.1002/fut.20198&gt;. Examples presented in 'NFCP' replicate the two-factor crude oil commodity pricing model presented in the prolific work of Schwartz and Smith (2000) &lt;doi:10.1287/mnsc.46.7.893.12034&gt; with the approximate term structure futures data applied within this study provided in the 'NFCP' package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nparACT </td>
   <td style="text-align:left;max-width: 50; "> Computes interdaily stability (IS), intradaily variability (IV) &amp; the relative amplitude (RA) from actigraphy data as described in Blume et al. (2016) &lt;doi: 10.1016/j.mex.2016.05.006&gt; and van Someren et al. (1999) &lt;doi: 10.3109/07420529908998724&gt;. Additionally, it also computes L5 (i.e. the 5 hours with lowest average actigraphy amplitude) and M10 (the 10 hours with highest average amplitude) as well as the respective start times. The flex versions will also compute the L-value for a user-defined number of minutes. IS describes the strength of coupling of a rhythm to supposedly stable zeitgebers. It varies between 0 (Gaussian Noise) and 1 for perfect IS. IV describes the fragmentation of a rhythm, i.e. the frequency and extent of transitions between rest and activity. It is near 0 for a perfect sine wave, about 2 for Gaussian noise and may be even higher when a definite ultradian period of about 2 hrs is present. RA is the relative amplitude of a rhythm. Note that to obtain reliable results, actigraphy data should cover a reasonable number of days. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> opentripplanner </td>
   <td style="text-align:left;max-width: 50; "> Setup and connect to 'OpenTripPlanner' (OTP) &lt;http://www.opentripplanner.org/&gt;.
    OTP is an open source platform for multi-modal and multi-agency
    journey planning written in 'Java'. The package allows you to manage a local version or 
    connect to remote OTP server to find walking, cycling, driving, or transit routes.
    This package has been peer-reviewed by rOpenSci (v. 0.2.0.0). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PASenseWear </td>
   <td style="text-align:left;max-width: 50; "> Provide summary table of daily physical activity and per-person/grouped heat map for accelerometer data from SenseWear Armband. See &lt;https://templehealthcare.wordpress.com/the-sensewear-armband/&gt; for more information about SenseWear Armband. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pawacc </td>
   <td style="text-align:left;max-width: 50; "> Functions to process, format and store ActiGraph GT1M and GT3X accelerometer data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PhysActBedRest </td>
   <td style="text-align:left;max-width: 50; "> Contains a function to categorize accelerometer readings collected in free-living (e.g., for 24 hours/day for 7 days), preprocessed and compressed as counts (unit-less value) in a specified time period termed epoch (e.g., 1 minute) as either bedrest (sleep) or active.  The input is a matrix with a timestamp column and a column with number of counts per epoch. The output is the same dataframe with an additional column termed bedrest. In the bedrest column each line (epoch) contains a function-generated classification 'br' or 'a' denoting bedrest/sleep and activity, respectively.  The package is designed to be used after wear/nonwear marking function in the 'PhysicalActivity' package.  Version 1.1 adds preschool thresholds and corrects for possible errors in algorithm implementation. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PhysicalActivity </td>
   <td style="text-align:left;max-width: 50; "> It provides a function "wearingMarking" for classification of monitor
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
   <td style="text-align:left;"> postGGIR </td>
   <td style="text-align:left;max-width: 50; "> Generate all necessary R/Rmd/shell files for data processing after running 'GGIR' (v2.4.0) for accelerometer data. In part 1, all csv files in the GGIR output directory were read, transformed and then merged. In part 2, the GGIR output files were checked and summarized in one excel sheet. In part 3, the merged data was cleaned according to the number of valid hours on each night and the number of valid days for each subject. In part 4, the cleaned activity data was imputed by the average Euclidean norm minus one (ENMO) over all the valid days for each subject. Finally, a comprehensive report of data processing was created using Rmarkdown, and the report includes few exploratory plots and multiple commonly used features extracted from minute level actigraphy data. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> r02pro </td>
   <td style="text-align:left;max-width: 50; "> This is a companion package of the book "R Programming: Zero to Pro"  &lt;https://r02pro.github.io/&gt;. It contains the datasets used in the book and provides interactive exercises corresponding to the book. It covers a wide range of topics including visualization, data transformation, tidying data, data input and output. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RbyExample </td>
   <td style="text-align:left;max-width: 50; "> Data for the examples and exercises in the book "R by Example".  
    Jim Albert and Maria Rizzo (2012, ISBN 978-1-4614-1365-3). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Rdice </td>
   <td style="text-align:left;max-width: 50; "> A collection of functions to simulate
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
   <td style="text-align:left;max-width: 50; "> Implements a high performance C++ parser 
    for 'ActiGraph' 'GT3X'/'GT3X+' data format (with extension '.gt3x') 
    for 'accelerometer' samples. Activity samples can be easily read into a
    matrix or data.frame.  This allows for storing the raw 'accelerometer' 
    samples in the original binary format to reserve space. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> rexer </td>
   <td style="text-align:left;max-width: 50; "> The main purpose of this package is to streamline the
    generation of exams that include random elements in exercises.
    Exercises can be defined in a table, based on text and figures, and
    may contain gaps to be filled with provided options. Exam documents
    can be generated in various formats. It allows us to generate a
    version for conducting the assessment and another version that
    facilitates correction, linked through a code. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> shuffleCI </td>
   <td style="text-align:left;max-width: 50; "> Scripts and exercises that use card shuffling to teach confidence interval comparisons for different estimators. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SIPETool </td>
   <td style="text-align:left;max-width: 50; "> Processor for selected ion flow tube mass spectrometer
            (SIFT-MS) output file from breath analysis. It allows the filtering of the SIFT output file (i.e., variation
            over time of the target analyte concentration) and the following
            analysis for the determination of: maximum, average, and standard deviation
            value of target concentration measured at each exhalation, and the
            respiratory rate over the measurement. Additionally, it is possible to
            align the SIFT-MS data with other on-line techniques such as 
            cardio pulmonary exercise test (CPET) for a comprehensive 
            characterization of breath samples. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SoilFunctionality </td>
   <td style="text-align:left;max-width: 50; "> Generally, soil functionality is characterized by its capability to sustain microbial activity, nutritional element supply, structural stability and aid for crop production. Since soil functions can be linked to 80% of ecosystem services, conservation of degraded land should strive to restore not only the capacity of soil to sustain flora but also ecosystem provisions. The primary ecosystem services of soil are carbon sequestration, food or biomass production, provision of microbial habitat, nutrient recycling. However, the actual magnitude of soil functions provided by agricultural land uses has never been quantified. Nutrient supply capacity (NSC) is a measure of nutrient dynamics in restored land uses. Carbon accumulation proficiency (CAP) is a measure of ecosystem carbon sequestration. Biological activity index (BAI) is the average of responses of all enzyme activities in treated land over control/reference land. The CAP parameter investigates how land uses may affect carbon flows, retention, and sequestration. The CAP provides a signal for C cycles, flows, and the systems' relative operational supremacy. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sojourn.Data </td>
   <td style="text-align:left;max-width: 50; "> Stores objects (e.g. neural networks) that are needed for
    using Sojourn accelerometer methods. For more information, see
    Lyden K, Keadle S, Staudenmayer J, &amp; Freedson P (2014)
    &lt;doi:10.1249/MSS.0b013e3182a42a2d&gt;, Ellingson LD, Schwabacher IJ,
    Kim Y, Welk GJ, &amp; Cook DB (2016) &lt;doi:10.1249/MSS.0000000000000915&gt;,
    and Hibbing PR, Ellingson LD, Dixon PM, &amp; Welk GJ (2018)
    &lt;doi:10.1249/MSS.0000000000001486&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SwimmeR </td>
   <td style="text-align:left;max-width: 50; "> The goal of the 'SwimmeR' package is to provide means of acquiring, and then analyzing, data from swimming (and diving) competitions.  To that end 'SwimmeR' allows results to be read in from .html sources, like 'Hy-Tek' real time results pages, '.pdf' files, 'ISL' results, 'Omega' results, and (on a development basis) '.hy3' files.  Once read in, 'SwimmeR' can convert swimming times (performances) between the computationally useful format of seconds reported to the '100ths' place (e.g. 95.37), and the conventional reporting format (1:35.37) used in the swimming community.  'SwimmeR' can also score meets in a variety of formats with user defined point values, convert times between courses ('LCM', 'SCM', 'SCY') and draw single elimination brackets, as well as providing a suite of tools for working cleaning swimming data.  This is a developmental package, not yet mature. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> T2DFitTailor </td>
   <td style="text-align:left;max-width: 50; "> A system for personalized exercise plan recommendations for T2D (Type 2 Diabetes) patients  based on the primary outcome of HbA1c (Glycated Hemoglobin). You provide the individual's information, and 'T2DFitTailor' details the exercise plan and predicts the intervention's effectiveness. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> tagtools </td>
   <td style="text-align:left;max-width: 50; "> High-resolution movement-sensor tags typically include accelerometers 
    to measure body posture and sudden movements or changes in speed, 
    magnetometers to measure direction of travel, and pressure sensors
    to measure dive depth in aquatic or marine animals. The sensors in these tags usually sample many times per second. Some tags include sensors for speed, turning rate (gyroscopes), and sound. This package provides software tools to facilitate calibration, processing, and analysis of such data. Tools are provided for: data import/export; 
    calibration (from raw data to calibrated data in scientific units); 
    visualization (for example, multi-panel time-series plots); 
    data processing (such as event detection, calculation of derived metrics like jerk and 
    dynamic acceleration, dive detection, and dive parameter calculation); and statistical analysis (for example, track reconstruction, a rotation test, and Mahalanobis distance analysis). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> trackeR </td>
   <td style="text-align:left;max-width: 50; "> Provides infrastructure for handling running, cycling and swimming data from GPS-enabled tracking devices within R. The package provides methods to extract, clean and organise workout and competition data into session-based and unit-aware data objects of class 'trackeRdata' (S3 class). The information can then be visualised, summarised, and analysed through flexible and extensible methods. Frick and Kosmidis (2017) &lt;doi: 10.18637/jss.v082.i07&gt;, which is updated and maintained as one of the vignettes, provides detailed descriptions of the package and its methods, and real-data demonstrations of the package functionality. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> trackeRapp </td>
   <td style="text-align:left;max-width: 50; "> Provides an integrated user interface and workflow for
             the analysis of running, cycling and swimming data from GPS-enabled
             tracking devices through the 'trackeR' &lt;https://CRAN.R-project.org/package=trackeR&gt; R package. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> TrackReconstruction </td>
   <td style="text-align:left;max-width: 50; "> Reconstructs animal tracks from magnetometer, accelerometer, depth and optional speed data.  Designed primarily using data from Wildlife Computers Daily Diary tags deployed on northern fur seals. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> triact </td>
   <td style="text-align:left;max-width: 50; "> Assists in analyzing the lying behavior of cows from raw data 
    recorded with a triaxial accelerometer attached to the hind leg of a cow. Allows 
    the determination of common measures for lying behavior including total lying duration, the 
    number of lying bouts, and the mean duration of lying bouts. Further capabilities are the 
    description of lying laterality and the calculation of proxies for the level of physical 
    activity of the cow. Reference: Simmler M., Brouwers S. P. (2023) &lt;https://gitlab.com/AgroSimi/triact_manuscript&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> vctrs </td>
   <td style="text-align:left;max-width: 50; "> Defines new notions of prototype and size that are used to
    provide tools for consistent and well-founded type-coercion and
    size-recycling, and are in turn connected to ideas of type- and
    size-stability useful for analysing function interfaces. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> walkboutr </td>
   <td style="text-align:left;max-width: 50; "> Process GPS and accelerometry data to generate walk bouts. A walk bout is a period of activity with accelerometer movement matching the patterns of walking with corresponding GPS measurements that confirm travel. The inputs of the 'walkboutr' package are individual-level accelerometry and GPS data. The outputs of the model are walk bouts with corresponding times, duration, and summary statistics on the sample population, which collapse all personally identifying information. These bouts can be used to measure walking both as an outcome of a change to the built environment or as a predictor of health outcomes such as a cardioprotective behavior. Kang B, Moudon AV, Hurvitz PM, Saelens BE (2017) &lt;doi:10.1016/j.trd.2017.09.026&gt;. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> whippr </td>
   <td style="text-align:left;max-width: 50; "> Set of tools for manipulating gas exchange data from cardiopulmonary exercise testing. </td>
  </tr>
</tbody>
</table>

## Manual search of the packages suggests the following packages are important

Core Packages


* GGIR 
* fitbitr
* HMMpa
* MIMSunit
* mMARCH.AC
* walkboutr

Packages


* acc
* accelerometry
* accelmissing
* actilifecounts
* activAnalyzer
* activPAL
* cycleRtools
* fitbitScraper
* fitbitViz
* GENEAclassify
* GENEAread
* GENEAsphere
* GGIRread
* lifelogr
* PASenseWear
* pawacc
* PhysActBedRest
* PhysicalActivity
* read.gt3x
* Sojourn.Data
* SwimmeR
* trackeRapp
* walkboutr
