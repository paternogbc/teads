#' @importFrom tibble tibble
NULL

#' Worldwide datasets for teaching data science.
#'
#' An implementation of sensitivity analysis for phylogenetic comparative
#' An umbrella of social and environmental datasets worldwide for
#' teaching data science, R programming, basic statistics and data visualization in R.
#' The package is an umbrella of usefull datasets to be used for teaching data analysis and
#' statistics.
#' @name teads-package
#' @author Gustavo Brant Paterno
#' @section Bug reports:
#'
#' \url{https://github.com/paternogbc/teads/issues}.
#' @section How to contribute?:
#'
#' You can find instructions on how to contribute to \bold{teads} at
#' this link: \url{https://github.com/paternogbc/teads}
#'
#' @details
#'
#' This package is build on the work of many that gathered this incredible datasets.
#' Always check details and reference to credit authors involved.
#' @docType package
NULL

#' Malaria deaths worldwide.
#'
#' Malaria deaths by age across the world and time.
#'
#' @format A data frame with five variables:
#' \itemize{
#' \item{\strong{country}} {The name of the country}
#' \item{\strong{code}} {The code of the country}
#' \item{\strong{year}} {The year of deaths}
#' \item{\strong{age_group}} {The age category}
#' \item{\strong{deaths}} {Number of malaria deaths per 100,000 individuals}
#' }
#'
#' @details
#' For further details, see \url{https://ourworldindata.org/malaria}
#'
#' @source
#' Data downloaded from \strong{TidyTuesday Project} Github repository:
#' \url{https://github.com/rfordatascience/tidytuesday}
#'
#' @references
#'
#' Max Roser and Hannah Ritchie (2019) - "Malaria". Published online at OurWorldInData.org.
#' Retrieved from: \url{https://ourworldindata.org/malaria}.
"malaria"

#' Global warming
#'
#' Global Annual Mean Surface Air Temperature Change
#'
#' @format A data frame with three variables:
#' \itemize{
#' \item{\strong{Source}} {The source of data: \strong{(1)} GISS Surface Temperature
#' (GISTEMP) analysis and \strong{(2)} the global component of Climate at a Glance (GCAG).}
#' \item{\strong{year}} {The year of temperature measures.}
#' \item{\strong{month}} {The month of temperature measures.}
#' \item{\strong{day}} {The day of temperature measures.}
#' \item{\strong{temp}} {Combined Land-Surface Air and Sea-Surface Water Temperature Anomalies
#' (deviations from a corresponding period, see details)}
#' }
#'
#' @details
#'
#' For \strong{GISTEMP}: Temperature Anomalies are deviations from 1951-1980
#' means (see \url{https://data.giss.nasa.gov/gistemp})
#'
#' For \strong{GCAG}: Temperature Anomalies are deviations with respect to the
#'  20th century average (see \url{http://www.ncdc.noaa.gov/cag/data-info/global})
#'
#' @source
#' Data downloaded from \url{https://datahub.io/core/global-temp#readme}
#'
#' @references
#
#' GISTEMP: NASA Goddard Institute for Space Studies (GISS) Surface
#' Temperature Analysis, Global Land-Ocean Temperature Index.
#'
#' NOAA National Climatic Data Center (NCDC), global component of Climate
#' at a Glance (GCAG).
"warming"

#' Anscombe quartet
#'
#' Four pair-wise sets of data (y ~ x) that have the same basic statsitical properties
#' but greatly differ in graphical form and shape.
#'
#' @format A data frame with three variables:
#' \itemize{
#' \item{\strong{quartet}} {The Anscombe quartet (1th, 2th, 3th, or 4th)}
#' \item{\strong{x}} {numeric x variable (integers)}
#' \item{\strong{y}} {numeric y variable (continous)}
#' }
#'
#' @source
#' Data gathered from \code{dataset::anscombe}
#'
#' @references
#'
#' F. J. Anscombe, Graphs in Statistical Analysis. Am. Stat. 27, 17 (1973).
#'
#' @import ggplot2
"Anscombe"
