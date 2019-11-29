# Javad Khataei
# skhataeipour@mun
# 11/29/2019

# this code submit ctv file to CRAN

library(ctv)

r <- getOption("repos")                 # set CRAN mirror
r["CRAN"] <- "https://cloud.r-project.org"
options(repos=r)


ctv_file <- read.ctv("PhysicalActivity.ctv")
html_file <- "PhysicalActivity.html"


check_ctv_packages("PhysicalActivity.ctv")             # run the check


ctv2html(ctv_file, file = html_file, reposname = "CRAN")



# test another ctv
x <- read.ctv(system.file("ctv", "Econometrics.ctv", package = "ctv"))

ctv::download.views(views = x ,coreOnly = T)

ctv::CRAN.views()

ctv::install.views("PhysicalActivity")



ctv::install.views("Econometrics")


ctv::repos_update_views(repos = "https://cran.r-project.org/web/views/")

