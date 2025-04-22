# BioSignalData Task View

## Scope

The BiosignalData Task View encompasses R packages designed for the acquisition, processing, analysis, and visualization of biosignal data collected from human subjects. Biosignals refer to physiological data captured by sensors such as accelerometers, gyroscopes, electromyography (EMG), electroencephalography (EEG), and electrocardiography (ECG). This Task View excludes packages primarily focused on GPS-based tracking data, which are covered in the [Tracking Task View](https://cran.r-project.org/web/views/Tracking.html).

Packages can range from those for data acquisition (e.g., connecting to  APIs or reading in weird data formats), to data processing (e.g., missing data imputation specific to these data), to activity recognition (e.g., detecting steps or swimming). The rapid growth of biosignal data analysis in health, sports, and behavioral sciences necessitates a centralized resource to guide researchers and practitioners in selecting appropriate R packages for their work.

Inclusion criteria for packages

* Packages that facilitate the acquisition, processing, or analysis of biosignal data from human subjects.
* Tools specifically designed for biosignal modalities such as accelerometry, EMG, EEG, and ECG.
* Analysis related to activity recognition and data processing for activity recognition.

Exclusion criteria for packages

* Packages focused solely on animal biosignal data
* Packages primarily dealing with GPS-based tracking data
* Archived or deprecated packages

Related packages

* [TimeSeries](https://cran.r-project.org/web/views/TimeSeries.html): Many biosignal analyses involve time series data.
* [Tracking](https://cran.r-project.org/web/views/Tracking.html): For packages related to GPS-based tracking data.
* [MedicalImaging](https://cran.r-project.org/web/views/MedicalImaging.html): For packages dealing with medical imaging data.

## Maintainers

* Daniel Fuller, daniel.fuller@usask.ca
* Kevin Mongeon, kevin.Mongeon@uottawa.ca

## Packages 

We developed a [package finder](https://github.com/cran-task-views/BiosignalData) script to search relevant packages. We then manually reviewed the package names and descriptions to decide what to include in the task view. We then review the download statistics and discussed each package with colleagues to determine if it should be considered a core package. The package finder can easily be updated and packages can be included manually as well. 

There is an [repo with code examples](https://github.com/clevengerkimberly/AccelerometerRepository) for many published methods in Human Activity Recognition. This was developed by Dr. Kimberly Clevenger. 

### Core Packages 

* [GGIR](https://cran.r-project.org/web/packages/GGIR/index.html)
* [fitbitr](https://cran.r-project.org/web/packages/fitbitr/index.html)
* [HMMpa](https://cran.r-project.org/web/packages/HMMpa/index.html)
* [MIMSunit](https://cran.r-project.org/web/packages/MIMSunit/index.html)
* [mMARCH.AC](https://cran.r-project.org/web/packages/mMARCH.AC/index.html)
* [walkboutr](https://cran.r-project.org/web/packages/walkboutr/index.html)

### Packages

#### Data acquisition/sets

* [eegkitdata](https://cran.r-project.org/web/packages/eegkitdata/index.html)
* [fitbitr](https://cran.r-project.org/web/packages/fitbitr/index.html)
* [fitbitScraper](https://cran.r-project.org/web/packages/fitbitScraper/index.html)
* [GENEAread](https://cran.r-project.org/web/packages/GENEAread/index.html)
* [GGIRread](https://cran.r-project.org/web/packages/GGIRread/index.html)
* [jointDiag](https://cran.r-project.org/web/packages/jointDiag/index.html)
* [lifelogr](https://cran.r-project.org/web/packages/lifelogr/)
* [PASenseWear](https://cran.r-project.org/web/packages/PASenseWear/)
* [read.gt3x](https://cran.r-project.org/web/packages/read.gt3x/index.html)
* [SwimmeR](https://cran.r-project.org/web/packages/SwimmeR/index.html)
* [trackeRapp](https://cran.r-project.org/web/packages/trackeRapp/index.html)
* [ricu](https://cran.r-project.org/web/packages/ricu/index.html)

#### Data processing/analysis and visualization

* [acc](https://cran.r-project.org/web/packages/acc/index.html)
* [accelerometry](https://cran.r-project.org/web/packages/accelerometry/index.html)
* [accelmissing](https://cran.r-project.org/web/packages/accelmissing/index.html)
* [ActFrag](https://cran.r-project.org/web//packages/ActFrag/index.html)
* [actilifecounts](https://cran.r-project.org/web/packages/actilifecounts/index.html)
* [activAnalyzer](https://cran.r-project.org/web/packages/activAnalyzer/index.html)
* [activPAL](https://cran.r-project.org/web/packages/activPAL/index.html)
* [biosignalEMG](https://cran.r-project.org/web/packages/biosignalEMG/index.html)
* [eegkit](https://cran.r-project.org/web/packages/eegkit/index.html)
* [egm](https://cran.r-project.org/web/packages/EGM/index.html)
* [ieegio](https://cran.r-project.org/web/packages/ieegio/index.html)
* [itsadug](https://cran.r-project.org/web/packages/itsadug/index.html)
* [impactr](https://cran.r-project.org/web//packages//impactr/index.html)
* [MIMSunit](https://cran.r-project.org/web/packages/MIMSunit/index.html)
* [mMARCH.AC](https://cran.r-project.org/web/packages/mMARCH.AC/index.html)
* [musclesyneRgies](https://cran.r-project.org/web/packages/musclesyneRgies/index.html)
* [patientProfileVis](https://cran.r-project.org/web/packages/patientProfilesVis/index.html)
* [pawacc](https://cran.r-project.org/web/packages/pawacc/index.html)
* [permuco](https://cran.r-project.org/web/packages/permuco/index.html)
* [permutes](https://cran.r-project.org/web/packages/permutes/index.html)
* [pfica](https://cran.r-project.org/web/packages/pfica/index.html)
* [plm](https://cran.r-project.org/web/packages/plm/index.html)
* [ravetools](https://cran.r-project.org/web/packages/ravetools/index.html)
* [threeBrain](https://cran.r-project.org/web/packages/threeBrain/index.html)

#### Activity recognition

* [ccid](https://cran.r-project.org/web/packages/ccid/index.html)
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
* [dfvad](https://cran.r-project.org/web/packages/dfvad/index.html)

#### Archived Packages

* [Sojour](https://cran.r-project.org/web//packages//Sojourn/index.html)
* [PAutilities](https://cran.r-project.org/web/packages/PAutilities/index.html)
* [activityCounts](https://cran.r-project.org/web/packages/activityCounts/index.html)


