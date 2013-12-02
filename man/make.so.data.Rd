\name{make.so.data}
\alias{make.so.data}
\title{Create spatial data object for model fitting via \code{spatialOccupancy}
function}
\usage{
  make.so.data(visit.data, site.data, names)
}
\arguments{
  \item{visit.data}{A data frame that contains the observed
  occupancy for each site and any detection related
  covariates.}

  \item{site.data}{A data frame that contains the site id,
  coordinates, and any habitat related covariates that
  might influence the occupancy process}

  \item{names}{A named list with the following elements:
  (1)\code{visit} A named list with elements "site" = the
  name of the site id in the observation data frame and
  "obs" = the name of the observed occupancy variable (2)
  \code{site} A named list with elements "site" = the name
  of the site id and "coords" = a character vector giving
  the name of the coordinates (x first then y)}
}
\value{
  An \code{so.data} object is a list with elements equal to
  the two data frames. Attributes are set giving the names
  of columns of interest
}
\description{
  This function takes an observation data frame and a data
  frame of site characteristics and combines them together
  for analysis with the \code{\link{spatial.occupancy}}
  function.
}
\details{
  This function combines the two data frames and assigns
  names so that \code{spatial.occupancy} knows which
  columns to use. It also performs some rudimentary error
  checking to make sure the data is in the proper form
  (e.g., the site IDs in the visit data frame must be
  contained in the site IDs for the site data frame)
}
\author{
  Devin S. Johnson <devin.johnson@noaa.gov>
}

