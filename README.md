## CRAN Task View: Physical Activity

                                                                     
--------------- --------------------------------------------------   
**Maintainer:** Daniel Fuller                                        
**Contact:**    dfuller at mun.ca                                    
**Version:**    2019-11-28                                           
**URL:**        <https://CRAN.R-project.org/view=PhysicalActivity>   

<div>

This task view provides a brief description of packages that can be used
in **physical activity** studies.Also, the view
[TimeSeries](https://cran.r-project.org/web/views/TimeSeries.html) task
as most of the physical activity data is in time-series format.

<div>

# Physical activity packages:

<div>

[ActFrag](https://cran.r-project.org/package=ActFrag)

Provides functions to extract commonly used fragmentation metrics to
quantify such time accumulation strategies based on minute level
actigraphy-measured activity counts data. It can create Wear/NonWear
Flags and perform fragmentation.

</div>

<div>

[Actigraphy](https://cran.r-project.org/package=Actigraphy)

Performs Functional Data Analysis (FDA) and implements functional linear
modeling and analysis for actigraphy data. **Keywords** : Apnea, BMI,
circadian activity patterns, Functional Data Analysis

</div>

<div>

[activityCounts](https://cran.r-project.org/package=activityCounts)

Generates ActiLife activity counts from raw acceleration data for
different accelerometer brands. There is considerable research
validating and developing algorithms for human activity using ActiLife
activity counts. Unfortunately, ActiLife, the software which generates
activity counts, is proprietary. This package generates activity counts
from raw accelerometer data.The package contains two sample datasets.
`sampleXYZ` is a sample of raw accelerometer data in g units recorded by
ActiGraph GT3X. Activity counts are generate for the `sampleXYZ` and
store in `sampleCounts` dataset. To compare the package's result with
ActiLife output the activity counts obtained from ActiLife software are
also provided in `sampleCounts`. **Keywords** : Activity counts,
Actilife, Actigraph

</div>

<div>

[activPAL](https://cran.r-project.org/package=activPAL)

Contains functions to generate pre-defined summary statistics from
activPAL events files ( <http:www.palt.com>). The package also contains
functions to produce informative graphics that visualise physical
activity behaviour and trends. This includes generating graphs that
align physical activity behaviour with additional time based
observations described by other data sets, such as sleep diaries and
continuous glucose monitoring data. **Keywords** : activPAL glucose
monitoring , sleep diaries, activity summary

</div>

<div>

[activpalProcessing](https://cran.r-project.org/package=activpalProcessing)

Performs estimation of physical activity and sedentary behavior
variables from activPAL (PAL Technologies, Glasgow, Scotland) events
files. See ( <http://paltechnologies.com>) for more information on the
activPAL. **Keywords** : read activePAL, activity estimatation

</div>

<div>

[cycleRtools](https://cran.r-project.org/package=cycleRtools)

A suite of functions for analysing cycling data. It can read Garmin file
(.fit), summarise and Visualise the data. **Keywords** : read Garmin,
cycling

</div>

<div>

[fitbitScraper](https://cran.r-project.org/package=fitbitScraper)

Scrapes data from Fitbit ( <http://www.fitbit.com>). First use the
package to log in to your Fitbit account and then receive the data. It
can get intraday data, sleep data , etc. This does not use the official
API, but instead uses the API that the web dashboard uses to generate
the graphs displayed on the dashboard after login at (
<http://www.fitbit.com>) **Keywords** : read Fitbit

</div>

<div>

[fitdc](https://cran.r-project.org/package=fitdc)

A pure R library for decoding Garmin FIT files. **Keywords** :read
Garmin

</div>

<div>

[GENEAclassify](https://cran.r-project.org/package=GENEAclassify)

Segmentation and classification procedures for data from the
'Activinsights GENEActiv' (
<https://www.activinsights.com/products/geneactiv/>) accelerometer that
provides the user with a model to guess behaviour from test data where
behaviour is missing. Includes a step counting algorithm, a function to
create segmented data with custom features and a function to use
recursive partitioning provided in the function rpart() of the 'rpart'
package to create classification models. **Keywords** : read GENEActiv,
classification

</div>

<div>

[GENEAread](https://cran.r-project.org/package=GENEAread)

Functions and analytics for GENEA-compatible accelerometer data into R
objects. See topic 'GENEAread' for an introduction to the package. See (
<https://www.activinsights.com/products/geneactiv/>) for more details on
the GENEActiv device. It provides a function for reading GENEA
accelerometer data (.bin files), and dunctions to manipualte the data.
**Keywords** : read GENEActiv, downsampling , epochal summaries, STFT
analyses, plotting

</div>

<div>

[GGIR](https://cran.r-project.org/package=GGIR)

A tool to process and analyse data collected with wearable raw
acceleration sensors as described in van Hees and colleagues (2014)
lt;doi: 10.1152/japplphysiol.00421.2014gt; and (2015) lt;doi:
10.1371/journal.pone.0142533gt;. The package has been developed and
tested for binary data from 'GENEActiv' (
<https://www.activinsights.com/>) and GENEA devices (not for sale),
.csv-export data from 'Actigraph' ( <http://actigraphcorp.com>) devices,
and .cwa and .wav-format data from 'Axivity' (
<https://axivity.com/product/ax3>). These devices are currently widely
used in research on human daily physical activity. Further, the package
can handle accelerometer data file from any other sensor brand providing
that the data is stored in csv format and has either no header or a two
column header. **Keywords** : GENEActiv; accelerometry; calibration;
epidemiology;sleep detection algorithm

</div>

<div>

[heatex](https://cran.r-project.org/package=heatex)

The heatex package calculates heat storage in the body and the
components of heat exchange (conductive, convective, radiative, and
evaporative) between the body and the environment during physical
activity based on the principles of partitional calorimetry. The program
enables heat exchange calculations for a range of environmental
conditions when wearing various clothing ensembles. **Keywords** : heat
exchange, calorimetry

</div>

<div>

[HMMpa](https://cran.r-project.org/package=HMMpa)

Analysing time-series accelerometer data to quantify length and
intensity of physical activity using hidden Markov models. It also
contains the traditional cut-off point method. Witowski V, Foraita R,
Pitsiladis Y, Pigeot I, Wirsik N (2014)(
<doi:10.1371/journal.pone.0114089>). **Keywords** : cut-off point
method, hidden Markov model, PA level

</div>

<div>

[lifelogr](https://cran.r-project.org/package=lifelogr)

Provides a framework for combining self-data (exercise, sleep, etc.)
from multiple sources (fitbit, Apple Health), creating visualizations,
and experimenting on onself. **Keywords** : fitbit, Apple Health,
visualization

</div>

<div>

[nparACT](https://cran.r-project.org/package=nparACT)

serves the non-parametric analysis of actigraphy data. Computed
parameters include interdaily stability (IS), intradaily variability
(IV) and relative amplitude (RA) as well as start times and average
activity during the 10 h with maximal and the 5 h with minimal activity
(i.e.;M10 and L5). **Keywords** : Actigraphy,Sleep, Circadian rhythm,
Zeitgeber, Internal clock, Amplitude

</div>

<div>

[PASenseWear](https://cran.r-project.org/package=PASenseWear)

Provide summary table of daily physical activity and per-person/grouped
heat map for accelerometer data from SenseWear Armband. **Keywords** :
PASenseWear

</div>

<div>

[PAutilities](https://cran.r-project.org/package=PAutilities)

A collection of utilities that are useful for a broad range of tasks
that are common in physical activity research, including the following:
creation of Bland-Altman plots, formatted descriptive statistics,
metabolic calculations (e.g.;basal metabolic rate predictions) and
conversions, demographic calculations (age and age-for-body-mass-index
percentile), bout analysis of moderate-to-vigorous intensity physical
activity, and analysis of bout detection algorithm performance.
**Keywords** : Bland-Altman plot. activity level, BMI, visualization

</div>

<div>

[PhysicalActivity](https://cran.r-project.org/package=PhysicalActivity)

It provides a function "wearingMarking" for classification of monitor
wear and nonwear time intervals in accelerometer data collected to
assess physical activity. The package also contains functions for making
plot for accelerometer data and obtaining the summary of various
information including daily monitor wear time and the mean monitor wear
time during valid days. The revised package version 0.2-1 improved the
functions in the previous version regarding speed and robustness. In
addition, several functions were added: "markDelivery" can classify days
for ActiGraph delivery by mail; "markPAI" can categorize physical
activity intensity level based on user-defined cut-points of
accelerometer counts. It also supports importing ActiGraph AGD files
with "readActigraph" and "queryActigraph" functions. The package also
better supports time zones and daylight saving. **Keywords** :
ActiGraph, accelerometer

</div>

<div>

[PML](https://cran.r-project.org/package=PML)

Penalized Multi-Band Learning algorithm can be effectively implemented
for circadian rhythm analysis and daily activity pattern
characterization using actigraphy (continuously measured objective
physical activity data). Functions for interactive visualization of
actigraph data are also included. Method reference: Li, X., Kane, M.,
Zhang, Y., Sun, W., Song, Y., Dong, S., Lin, Q., Zhu, Q., Jiang, F.,
Zhao, H. (2019) A Novel Penalized Multi-band Learning Approach
Characterizes the Consolidation of Sleep-Wake Circadian Rhythms During
Early Childhood Development. **Keywords** : circadian rhythm, actigraph

</div>

<div>

[SwimmeR](https://cran.r-project.org/package=SwimmeR)

There are two goals for 'SwimmeR' as presently constructed. First, it
converts swimming times (performances) between the computationally
useful format of seconds, reported to the 100ths place (eg 95.37) and
the conventional reporting format (1:35.37) used in the swimming
community. Secondly 'SwimmeR' converts times between the various pool
sizes used in competitive swimming, namely 50m length (LCM), 25m length
(SCM) and 25y length (SCY). **Keywords** : swimming, timing format

</div>

<div>

[trackeR](https://cran.r-project.org/package=trackeR)

Provides infrastructure for handling running, cycling and swimming data
from GPS-enabled tracking devices within R. The package provides methods
to extract, clean and organise workout and competition data into
session-based and unit-aware data objects of class 'trackeRdata' (S3
class). The information can then be visualised, summarised, and analysed
through flexible and extensible methods. Frick and Kosmidis (2017)
lt;doi: 10.18637/jss.v082.i07gt;, which is updated and maintained as one
of the vignettes, provides detailed descriptions of the package and its
methods, and real-data demonstrations of the package functionality.
**Keywords** : tracking, work capacity, running, cycling, distribution
profiles, read TCX

</div>

<div>

[trackeRapp](https://cran.r-project.org/package=trackeRapp)

Provides an integrated user interface and workflow for the analysis of
running, cycling and swimming data from GPS-enabled tracking devices
through the 'trackeR' ( <https://CRAN.R-project.org/package=trackeR>) R
package. **Keywords** : trackeR

</div>

</div>

</div>

### CRAN packages:

  - [ActFrag](https://cran.r-project.org/package=ActFrag)
  - [Actigraphy](https://cran.r-project.org/package=Actigraphy)
  - [activityCounts](https://cran.r-project.org/package=activityCounts)
  - [activPAL](https://cran.r-project.org/package=activPAL)
  - [activpalProcessing](https://cran.r-project.org/package=activpalProcessing)
  - [cycleRtools](https://cran.r-project.org/package=cycleRtools)
  - [fitbitScraper](https://cran.r-project.org/package=fitbitScraper)
  - [fitdc](https://cran.r-project.org/package=fitdc)
  - [GENEAclassify](https://cran.r-project.org/package=GENEAclassify)
  - [GENEAread](https://cran.r-project.org/package=GENEAread)
  - [GGIR](https://cran.r-project.org/package=GGIR)
  - [heatex](https://cran.r-project.org/package=heatex)
  - [HMMpa](https://cran.r-project.org/package=HMMpa)
  - [lifelogr](https://cran.r-project.org/package=lifelogr)
  - [nparACT](https://cran.r-project.org/package=nparACT)
  - [PASenseWear](https://cran.r-project.org/package=PASenseWear)
  - [PAutilities](https://cran.r-project.org/package=PAutilities)
  - [PhysicalActivity](https://cran.r-project.org/package=PhysicalActivity)
  - [PML](https://cran.r-project.org/package=PML)
  - [SwimmeR](https://cran.r-project.org/package=SwimmeR)
  - [trackeR](https://cran.r-project.org/package=trackeR)
  - [trackeRapp](https://cran.r-project.org/package=trackeRapp)

### Related links:

  - [GitHub repository for this Task
    View](https://github.com/walkabilly/pa_task_view)
