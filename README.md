Human Activity Recognition Task View

# Scope

The scope of this task view is to provide descriptions of packages that can be used for <b>HumanActivityRecognition</b>. Packages for both research grade devices (e.g., accelerometers or GPS devices) and commercial wearable devices (e.g., Fitbit) are included. Packages can range from those for data acquisition (e.g., connecting to  APIs or reading in weird data formats), to data processing (e.g., missing data imputation specific to these data), to activity recognition (e.g., detecting steps or swimming). This Task View is necessary because of the area of <b>HumanActivityRecognition</b> is expanding rapidly, however, there is no hub to connect the various work that people are doing. 

The <view>TimeSeries</view> view is related to <b>HumanActivityRecognition</b> because much of the analysis work uses high-frequency time series data from accelerometers. 

# Packages 

We developed a [package finder](https://github.com/walkabilly/pa_task_view/blob/master/package-finder.md) script to search relevant packages. We then manually reviewed the package names and descriptions to decide what to include in the task view. We then review the download statistics and discussed each package with colleagues to determine if it should be considered a core package. The package finder can easily be updated and packages can be included manually as well. 

## Core Packages 

* [GGIR](https://cran.r-project.org/web/packages/GGIR/index.html)
* [fitbitr](https://cran.r-project.org/web/packages/fitbitr/index.html)
* [HMMpa](https://cran.r-project.org/web/packages/HMMpa/index.html)
* [MIMSunit](https://cran.r-project.org/web/packages/MIMSunit/index.html)
* [mMARCH.AC](https://cran.r-project.org/web/packages/mMARCH.AC/index.html)
* [walkboutr](https://cran.r-project.org/web/packages/walkboutr/index.html)

## Packages

### Data acquisition

* [fitbitr](https://cran.r-project.org/web/packages/fitbitr/index.html)
* [fitbitScraper](https://cran.r-project.org/web/packages/fitbitScraper/index.html)
* [GENEAread](https://cran.r-project.org/web/packages/GENEAread/index.html)
* [GGIRread](https://cran.r-project.org/web/packages/GGIRread/index.html)
* [lifelogr](https://cran.r-project.org/web/packages/lifelogr/)
* [PASenseWear](https://cran.r-project.org/web/packages/PASenseWear/)
* [read.gt3x](https://cran.r-project.org/web/packages/read.gt3x/index.html)
* [SwimmeR](https://cran.r-project.org/web/packages/SwimmeR/index.html)
* [trackeRapp](https://cran.r-project.org/web/packages/trackeRapp/index.html)

### Data processing 

* acc
* accelerometry
* accelmissing
* ActFrag
* actilifecounts
* activAnalyzer
* activPAL
* impactr
* MIMSunit
* mMARCH.AC
* pawacc

### Activity recognition

* cycleRtools
* GENEAsphere
* GENEAclassify
* HMMpa
* PhysActBedRest
* PhysicalActivity
* Sojourn.Data
* walkboutr

### Miscellaneous

* fitbitViz




