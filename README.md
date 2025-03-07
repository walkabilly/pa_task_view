# Human Activity Recognition Task View

## Scope

The scope of this task view is to provide descriptions of packages that can be used for <b>HumanActivityRecognition</b>. Packages for both research grade devices (e.g., accelerometers or GPS devices) and commercial wearable devices (e.g., Fitbit) are included. Packages can range from those for data acquisition (e.g., connecting to  APIs or reading in weird data formats), to data processing (e.g., missing data imputation specific to these data), to activity recognition (e.g., detecting steps or swimming). This Task View is necessary because of the area of <b>HumanActivityRecognition</b> is expanding rapidly, however, there is no hub to connect the various work that people are doing. 

Inclusion criteria for packages

* Analysis involving humans (there are some packages for accelerometer data for cows and pigs)
* Analysis related to activity recognition and data processing for activity recognition

Exclusion criteria for packages

* Archived packages

Related packages

* The <view>TimeSeries</view> view is related to <b>HumanActivityRecognition</b> because much of the analysis work uses high-frequency time series data from accelerometers. 

## Maintainers

* Daniel Fuller, daniel.fuller@usask.ca
* Kevin Mongeon, kevin.Mongeon@uottawa.ca

## Packages 

We developed a [package finder](https://github.com/walkabilly/pa_task_view/blob/master/package-finder.md) script to search relevant packages. We then manually reviewed the package names and descriptions to decide what to include in the task view. We then review the download statistics and discussed each package with colleagues to determine if it should be considered a core package. The package finder can easily be updated and packages can be included manually as well. 

There is an [repo with code examples](https://github.com/clevengerkimberly/AccelerometerRepository) for many published methods in Human Activity Recognition. This was developed by Dr. Kimberly Clevenger. 

### Core Packages 

* [GGIR](https://cran.r-project.org/web/packages/GGIR/index.html)
* [fitbitr](https://cran.r-project.org/web/packages/fitbitr/index.html)
* [HMMpa](https://cran.r-project.org/web/packages/HMMpa/index.html)
* [MIMSunit](https://cran.r-project.org/web/packages/MIMSunit/index.html)
* [mMARCH.AC](https://cran.r-project.org/web/packages/mMARCH.AC/index.html)
* [walkboutr](https://cran.r-project.org/web/packages/walkboutr/index.html)

### Packages

#### Data acquisition

* [fitbitr](https://cran.r-project.org/web/packages/fitbitr/index.html)
* [fitbitScraper](https://cran.r-project.org/web/packages/fitbitScraper/index.html)
* [GENEAread](https://cran.r-project.org/web/packages/GENEAread/index.html)
* [GGIRread](https://cran.r-project.org/web/packages/GGIRread/index.html)
* [lifelogr](https://cran.r-project.org/web/packages/lifelogr/)
* [PASenseWear](https://cran.r-project.org/web/packages/PASenseWear/)
* [read.gt3x](https://cran.r-project.org/web/packages/read.gt3x/index.html)
* [SwimmeR](https://cran.r-project.org/web/packages/SwimmeR/index.html)
* [trackeRapp](https://cran.r-project.org/web/packages/trackeRapp/index.html)

#### Data processing 

* [acc](https://cran.r-project.org/web/packages/acc/index.html)
* [accelerometry](https://cran.r-project.org/web/packages/accelerometry/index.html)
* [accelmissing](https://cran.r-project.org/web/packages/accelmissing/index.html)
* [ActFrag](https://cran.r-project.org/web//packages/ActFrag/index.html)
* [actilifecounts](https://cran.r-project.org/web/packages/actilifecounts/index.html)
* [activAnalyzer](https://cran.r-project.org/web/packages/activAnalyzer/index.html)
* [activPAL](https://cran.r-project.org/web/packages/activPAL/index.html)
* [impactr](https://cran.r-project.org/web//packages//impactr/index.html)
* [MIMSunit](https://cran.r-project.org/web/packages/MIMSunit/index.html)
* [mMARCH.AC](https://cran.r-project.org/web/packages/mMARCH.AC/index.html)
* [pawacc](https://cran.r-project.org/web/packages/pawacc/index.html)

#### Activity recognition

* [cycleRtools](https://cran.r-project.org/web/packages/cycleRtools/index.html)
* [GENEAsphere](https://cran.r-project.org/web/packages/GENEAsphere/index.html)
* [GENEAclassify](https://cran.r-project.org/web/packages/GENEAclassify/index.html)
* [HMMpa](https://cran.r-project.org/web/packages/HMMpa/index.html)
* [PhysActBedRest](https://cran.r-project.org/web/packages/PhysActBedRest/index.html)
* [PhysicalActivity](https://cran.r-project.org/web/packages/PhysicalActivity/)
* [Sojourn.Data](https://cran.r-project.org/web/packages/Sojourn.Data/index.html)
* [walkboutr](https://cran.r-project.org/web/packages/walkboutr/index.html)

#### Miscellaneous

* [fitbitViz](https://cran.r-project.org/web/packages/fitbitViz/index.html)

#### Archived Packages

* [Sojour](https://cran.r-project.org/web//packages//Sojourn/index.html)
* [PAutilities](https://cran.r-project.org/web/packages/PAutilities/index.html)
* [activityCounts](https://cran.r-project.org/web/packages/activityCounts/index.html)


