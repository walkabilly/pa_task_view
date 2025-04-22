---
title: "R Notebook"
output:
    html_document:
      keep_md: true
---

# Bio Signal packages:

### acc

Processes accelerometer data from uni-axial and tri-axial devices, and generates data summaries. Also includes functions to plot, analyze, and simulate accelerometer data.

### accelerometry

A collection of functions that perform operations on time-series accelerometer data, such as identify non-wear time, flag minutes that are part of an activity bout, and find the maximum 10-minute average count value. The functions are generally very flexible, allowing for a variety of algorithms to be implemented. Most of the functions are written in C++ for efficiency.

### accelmissing

Imputation for the missing count values in accelerometer data. The methodology includes both parametric and semi-parametric multiple imputations under the zero-inflated Poisson lognormal model. This package also provides multiple functions to pre-process the accelerometer data previous to the missing data imputation. These includes detecting wearing and non-wearing time, selecting valid days and subjects, and creating plots.

### ActFrag

Provides functions to extract commonly used fragmentation metrics to quantify such time accumulation strategies based on minute level actigraphy-measured activity counts data. It can create Wear/NonWear Flags and perform fragmentation.

### Actigraphy

Performs Functional Data Analysis (FDA) and implements functional linear modeling and analysis for actigraphy data.
**Keywords**: Apnea, BMI, circadian activity patterns, Functional Data Analysis

### activityCounts	

Generates ActiLife activity counts from raw acceleration data for different accelerometer brands.  There is considerable research validating and developing algorithms for human activity using ActiLife activity counts. Unfortunately, ActiLife, the software which generates activity counts, is proprietary. This package generates activity counts from raw accelerometer data.The package contains two sample datasets. `sampleXYZ` is a sample of raw accelerometer data in g units recorded by ActiGraph GT3X. Activity counts are generate for the `sampleXYZ` and store in `sampleCounts` dataset. To compare the package's result with ActiLife output the activity counts obtained from ActiLife software are also provided in `sampleCounts`. **Keywords**: Activity counts, Actilife, Actigraph

### activPAL

Contains functions to generate pre-defined summary statistics from activPAL events files <http:www.palt.com>. The package also contains functions to produce informative graphics that visualise physical activity behaviour and trends. This includes generating graphs that align physical activity behaviour with additional time based observations described by other data sets, such as sleep diaries and continuous glucose monitoring data.  **Keywords**: activPAL glucose monitoring , sleep diaries, activity summary

### activpalProcessing

Performs estimation of physical activity and sedentary behavior variables from activPAL (PAL Technologies, Glasgow, Scotland) events files. See <http://paltechnologies.com> for more information on the activPAL.  **Keywords**: read activePAL, activity estimatation

### adept

Designed for optimal use in performing fast, accurate walking strides segmentation from high-density data collected from a wearable accelerometer worn during continuous walking activity.

### AGread

Standardize the process of bringing various modes of output files into R. Additionally, processes are provided to read and minimally pre- process raw data from primary accelerometer and inertial measurement unit files, as well as binary .gt3x files. ActiGraph monitors are used to estimate physical activity outcomes via body-worn sensors that measure (e.g.) acceleration or rotational velocity.

### arctools

Provides functions to process minute level actigraphy-measured activity counts data and extract commonly used physical activity volume and fragmentation metrics.

### biosignalEMG

 Data processing tools to compute the rectified, integrated and the averaged EMG. Routines for automatic detection of activation phases. An EMG signal simulator for general purposes.

 ### ccid

Detection of change points in functional connectivity networks for functional magnetic resonance imaging (fMRI), electroencephalography (EEG),magentoencephalography (MEG) and electrocorticography (ECoG) data.               

### cycleRtools	

A suite of functions for analysing cycling data. It can read Garmin file (.fit), summarise and Visualise the data. **Keywords**: read Garmin, cycling

### dfvad   

Decomposing value added growth into explanatory factors. A cost constrained value added function is defined to specify the  production frontier, used for EMG.   

### eegkit

Analysis and visualization tools for electroencephalography (EEG) data. Includes functions for (i) plotting EEG data, (ii) filtering EEG data, (iii) smoothing EEG data; (iv) frequency domain (Fourier) analysis of EEG data, (v) Independent Component Analysis of EEG data, and (vi) simulating event-related potential EEG data.

 ### eegkitdata 

Contains the example EEG data used in the package eegkit. Also contains code for easily creating larger EEG datasets from the EEG Database on the UCI Machine Learning Repository.

### egm 

A system for importing electrophysiological signal, based on the 'Waveform Database (WFDB)' software package, written by Moody et al 2022 <doi:10.13026/gjvw-1m31>. A wrapper for utilizing 'WFDB' functions for reading and writing signal data, as well as functions for visualization and analysis are provided. A stable and broadly compatible class for working with signal data, supporting the reading in of cardiac electrophysiogical files such as intracardiac electrograms, is introduced.

### fitbitScraper	

Scrapes data from Fitbit <http://www.fitbit.com>. First use the package to log in to your Fitbit account and then receive the data. It can get intraday data, sleep data , etc. This does not use the official API, but instead uses the API that the web dashboard uses to generate the graphs displayed on the dashboard after login at <http://www.fitbit.com>  **Keywords**: read Fitbit

### fitdc

A pure R library for decoding Garmin FIT files.  **Keywords**:read Garmin

### GENEAclassify	

Segmentation and classification procedures for data from the 'Activinsights GENEActiv' <https://www.activinsights.com/products/geneactiv/> accelerometer that provides the user with a model to guess behaviour from test data where behaviour is missing. Includes a step counting algorithm, a function to create segmented data with custom features and a function to use recursive partitioning provided in the function rpart() of the 'rpart' package to create classification models. **Keywords**: read GENEActiv, classification 

### GENEAread	

Functions and analytics for GENEA-compatible accelerometer data into R objects. See topic 'GENEAread' for an introduction to the package. See <https://www.activinsights.com/products/geneactiv/> for more details on the GENEActiv device. It provides a function for reading GENEA accelerometer data (.bin files), and dunctions to manipualte the data. **Keywords**: read GENEActiv, downsampling , epochal summaries,  STFT analyses, plotting

### GENEAsphere

Creates visualisations in two and three dimensions of simulated data based on detected segments or raw accelerometer data.

### GGIR	

A tool to process and analyse data collected with wearable raw acceleration sensors as described in van Hees and colleagues (2014) <doi: 10.1152/japplphysiol.00421.2014> and (2015) <doi: 10.1371/journal.pone.0142533>. The package has been developed and tested for binary data from 'GENEActiv' <https://www.activinsights.com/> and GENEA devices (not for sale), .csv-export data from 'Actigraph' <http://actigraphcorp.com> devices, and .cwa and .wav-format data from 'Axivity' <https://axivity.com/product/ax3>. These devices are currently widely used in research on human daily physical activity. Further, the package can handle accelerometer data file from any other sensor brand providing that the data is stored in csv format and has either no header or a two column header. **Keywords**:   GENEActiv; accelerometry; calibration; epidemiology;sleep detection algorithm

### heatex	

The heatex package calculates heat storage in the body and the components of heat exchange (conductive, convective, radiative, and evaporative) between the body and the environment during physical activity based on the principles of partitional calorimetry. The program enables heat exchange calculations for a range of environmental conditions when wearing various clothing ensembles.  **Keywords**: heat exchange, calorimetry

### HMMpa	
Analysing time-series accelerometer data to quantify length and intensity of physical activity using hidden Markov models. It also contains the traditional cut-off point method. Witowski V, Foraita R, Pitsiladis Y, Pigeot I, Wirsik N (2014)<doi:10.1371/journal.pone.0114089>. **Keywords**: cut-off point method, hidden Markov model, PA level

### ieegio

Integrated toolbox supporting common file formats used for intracranial Electroencephalography (iEEG) and deep-brain stimulation (DBS) study. 

### itsadug
Implemented in the R package 'mgcv' (Wood, S.N., 2006; 2011) is a nonlinear  regression analysis which is particularly useful for time course data such as EEG, pupil dilation, gaze data (eye tracking), and articulography recordings, but also for behavioral data such as reaction times and response data.     

### jointDiag

Different algorithms to perform approximate joint diagonalization of a finite set of square matrices. Depending on the algorithm, orthogonal or non-orthogonal diagonalizer is found. These algorithms are particularly useful in the context of blind source separation. Original publications of the algorithms can be found in Ziehe et al. (2004), 

### lifelogr

Provides a framework for combining self-data (exercise, sleep, etc.) from multiple sources (fitbit, Apple Health), creating visualizations, and experimenting on onself.  **Keywords**: fitbit, Apple Health, visualization

### MIMSunit

The MIMS-unit algorithm is developed to compute Monitor Independent Movement Summary Unit, a measurement to summarize raw accelerometer data while ensuring harmonized results across different devices. It also includes scripts to reproduce results in the related publication (John, D., Tang. Q., Albinali, F. and Intille, S. (2019) <doi:10.1123/jmpb.2018-0068>).

### musclesyneRgies

Provides a framework to factorise electromyography (EMG) data. Tools are provided for raw data pre-processing, non negative matrix factorisation, classification of factorised data and plotting of obtained outcomes. In particular, reading from ASCII files is supported, along with wide-used filtering approaches to process EMG data. All steps include one or more sensible defaults that aim at simplifying the workflow. Yet, all functions are largely tunable at need. Example data sets are included.

### nparACT

serves the non-parametric analysis of actigraphy data.
Computed parameters include interdaily stability (IS), intradaily variability (IV) and relative amplitude (RA) as well as start times and average activity during the 10 h with maximal and the 5 h with minimal activity (i.e. M10 and L5).
**Keywords**: Actigraphy,Sleep, Circadian rhythm, Zeitgeber, Internal clock, Amplitude

### PASenseWear

Provide summary table of daily physical activity and per-person/grouped heat map for accelerometer data from SenseWear Armband.  **Keywords**: PASenseWear

### patientProfilesVis
Creation of patient profile visualizations for exploration, diagnostic or monitoring purposes during a clinical trial. These static visualizations display a patient-specific overview of the evolution during the trial time frame of  parameters of interest (as laboratory, ECG, vital signs).

### PAutilities

A collection of utilities that are useful for a broad range of tasks that are common in physical activity research, including the following: creation of Bland-Altman plots, formatted descriptive statistics, metabolic calculations (e.g. basal metabolic rate predictions) and conversions, demographic calculations (age and age-for-body-mass-index percentile), bout analysis of moderate-to-vigorous intensity physical activity, and analysis of bout detection algorithm performance. **Keywords**: Bland-Altman plot. activity level, BMI, visualization

### permuco

Functions to compute p-values based on permutation tests. Regression, ANOVA and ANCOVA, omnibus F-tests, marginal unilateral and bilateral t-tests are available.  An extension for the comparison of signals issued from experimental conditions (e.g. EEG/ERP signals) is provided.    

### permutes

Helps determine the analysis window to use when analyzing densely-sampled time-series data, such as EEG data, using permutation testing (Maris & Oostenveld, 2007).

### pfica

Performs smoothed (and non-smoothed) principal/independent components analysis of functional data. Various functional pre-whitening approaches are implemented as discussed in Vidal and Aguilera (2022), Rosso and Aguilera (2021). Bi-smoothed functional independent component analysis for EEG artifact removal.       

### plm

A set of estimators for models and (robust) covariance matrices, and tests for panel data econometrics, including within/fixed effects, random effects, between, first-difference, nested random effects as well as instrumental-variable (IV) and Hausman-Taylor-style models,panel generalized method of moments (GMM) and general FGLS models,mean groups (MG), demeaned MG, and common correlated effects (CCEMG) and pooled (CCEP) estimators with common factors, variable coefficients and limited dependent variables models.     

### PhysActBedRest

Contains a function to categorize accelerometer readings collected in free-living (e.g., for 24 hours/day for 7 days), preprocessed and compressed as counts (unit-less value) in a specified time period termed epoch (e.g., 1 minute) as either bedrest (sleep) or active. The input is a matrix with a timestamp column and a column with number of counts per epoch. The output is the same dataframe with an additional column termed bedrest. In the bedrest column each line (epoch) contains a function-generated classification 'br' or 'a' denoting bedrest/sleep and activity, respectively. The package is designed to be used after wear/nonwear marking function in the 'PhysicalActivity' package. Version 1.1 adds preschool thresholds and corrects for possible errors in algorithm implementation.

### PhysicalActivity	

It provides a function "wearingMarking" for classification of monitor wear and nonwear time intervals in accelerometer data collected to assess physical activity. The package also contains functions for making plot for accelerometer data and obtaining the summary of various information including daily monitor wear time and the mean monitor wear time during valid days. The revised package version 0.2-1 improved the functions in the previous version regarding speed and robustness. In addition, several functions were added: "markDelivery" can classify days for ActiGraph delivery by mail; "markPAI" can categorize physical activity intensity level based on user-defined cut-points of accelerometer counts. It also supports importing ActiGraph AGD files with "readActigraph" and "queryActigraph" functions. The package also better supports time zones and daylight saving.**Keywords**: ActiGraph, accelerometer

### PML	

Penalized Multi-Band Learning algorithm can be effectively implemented for circadian rhythm analysis and daily activity pattern characterization using actigraphy (continuously measured objective physical activity data). Functions for interactive visualization of actigraph data are also included. Method reference: Li, X., Kane, M., Zhang, Y., Sun, W., Song, Y., Dong, S., Lin, Q., Zhu, Q., Jiang, F., Zhao, H. (2019) A Novel Penalized Multi-band Learning Approach Characterizes the Consolidation of Sleep-Wake Circadian Rhythms During Early Childhood Development. **Keywords**: circadian rhythm, actigraph 

### ravetools

Implemented fast and memory-efficient Notch-filter,  Welch-periodogram, discrete wavelet spectrogram for minutes of high-resolution signals, fast 3D convolution, image registration, 3D mesh manipulation; providing fundamental toolbox for intracranial Electroencephalography (iEEG) pipelines.      

### ricu
Focused on (but not exclusive to) data sets hosted on PhysioNet (<https://physionet.org>), 'ricu' provides utilities for download, setup and access of intensive care unit (ICU) data sets. In addition to functions for running arbitrary queries against available data sets, a system for defining clinical concepts and encoding their representations in tabular ICU data is presented.

### Sojourn

Provides a simple way for utilizing Sojourn methods for accelerometer processing, as detailed in Lyden K, Keadle S, Staudenmayer J, & Freedson P (2014) <doi:10.1249/MSS.0b013e3182a42a2d>, Ellingson LD, Schwabacher IJ, Kim Y, Welk GJ, & Cook DB (2016) <doi:10.1249/MSS.0000000000000915>, and Hibbing PR, Ellingson LD, Dixon PM, & Welk GJ (2018) <doi:10.1249/MSS.0000000000001486>.

### Sojourn.Data

Stores objects (e.g. neural networks) that are needed for using Sojourn accelerometer methods. For more information, see Lyden K, Keadle S, Staudenmayer J, & Freedson P (2014) <doi:10.1249/MSS.0b013e3182a42a2d>, Ellingson LD, Schwabacher IJ, Kim Y, Welk GJ, & Cook DB (2016) <doi:10.1249/MSS.0000000000000915>, and Hibbing PR, Ellingson LD, Dixon PM, & Welk GJ (2018) <doi:10.1249/MSS.0000000000001486>.

### SwimmeR	

There are two goals for 'SwimmeR' as presently constructed. First, it converts swimming times (performances) between the computationally useful format of seconds, reported to the 100ths place (eg 95.37) and the conventional reporting format (1:35.37) used in the swimming community. Secondly 'SwimmeR' converts times between the various pool sizes used in competitive swimming, namely 50m length (LCM), 25m length (SCM) and 25y length (SCY). **Keywords**: swimming, timing format 

### threeBrain

A fast, interactive cross-platform, and easy to share 'WebGL'-based 3D brain viewer that visualizes 'FreeSurfer' and/or 'AFNI/SUMA' surfaces. The viewer widget can be either standalone or embedded into 'R-shiny' applications. The standalone version only require a web browser with 'WebGL2' support (for example, 'Chrome', 'Firefox', 'Safari'), and can be inserted into any websites. The 'R-shiny' support allows the 3D viewer to be dynamically generated from reactive user inputs. This feature has been fully adopted by 'RAVE' , an interactive toolbox to analyze 'iEEG' data.

### TLBC

Contains functions for training and applying two-level random forest and hidden Markov models for human behavior classification from raw tri-axial accelerometer and/or GPS data. Includes functions for training a two-level model, applying the model to data, and computing performance.

### trackeR

Provides infrastructure for handling running, cycling and swimming data from GPS-enabled tracking devices within R. The package provides methods to extract, clean and organise workout and competition data into session-based and unit-aware data objects of class 'trackeRdata' (S3 class). The information can then be visualised, summarised, and analysed through flexible and extensible methods. Frick and Kosmidis (2017) <doi: 10.18637/jss.v082.i07>, which is updated and maintained as one of the vignettes, provides detailed descriptions of the package and its methods, and real-data demonstrations of the package functionality. **Keywords**: tracking, work capacity, running, cycling, distribution profiles, read TCX

### trackeRapp

Provides an integrated user interface and workflow for the analysis of running, cycling and swimming data from GPS-enabled tracking devices through the 'trackeR' <https://CRAN.R-project.org/package=trackeR> R package.  **Keywords**: trackeR
