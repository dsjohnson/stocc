% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stocc-package.R
\docType{data}
\name{visitData}
\alias{visitData}
\title{Simulated occupancy survey data}
\format{A data frame with 1340 observations on the following 6 variables.
\describe{ \item{site}{Site labels} \item{x}{Longitude
coordinate} \item{y}{Latitude coordinate} \item{detCov1}{a
numeric vector} \item{detCov2}{a factor with levels \code{0} \code{1}
\code{2} \code{3}} \item{obs}{a numeric vector} }}
\description{
Data set representing a simulated survey of the 40 x 40 study area.
Approximately 1/3 of the 1600 sites were visited at least once. Those sites
that were surveyed were visited a random number of times with an average of
2.5 visits. Detection was simulated as a function of 2 covariates, a
continuous one (cov1) and a factor (cov2). These are NOT the same as the
cov1 and cov2 of the habData data frame. The coefficients used were
\code{beta = c(1, 0, 0.5, 1, 0)}. Thus detection given occupancy of site i
at time j = \code{pnorm(0,X\%*\%beta,lower=FALSE)}.
}
\examples{

data(visitData)
data(occupancyData)
##
## Blue points represent visited sites and green circles represent confirmed occupancy.
##
image(x=seq(0.5,39.5,1), y=seq(0.5,39.5,1), z=t(matrix(occupancyData$psi,40)), 
	xlab="x", ylab="y", main="Occupancy process with visits")
points(visitData$x[visitData$obs==1], visitData$y[visitData$obs==1], col="green")
points(visitData$x, visitData$y, col="blue", pch=20, cex=0.25)

}
\keyword{datasets}
