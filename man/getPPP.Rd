\name{getPPP}
\alias{getPPP}

\title{Alias for \code{getPercentilePlottingPositions}, sets data into the format required by lslr.}

\description{
Determination of plotting positions to be used for linear regression of life data analysis is a highly debated topic.
  This function implements a wide assortment of options for the Weibull-R project.
}

\usage{
getPPP(x, s=NULL, interval=NULL, ppos="beta", aranks="Johnson", ties="none")
}

\arguments{
  \item{x}{
	Either a dataframe containing at least \code{$time} and \code{$event}
	columns and optionally a \code{$qty} column, or a vector of class \code{"numeric"} or \code{"integer"} with
	(life-)time observations.
  }
  \item{s}{An optional vector of suspension data.}
  \item{interval}{reserved argument for interval censored data - NOT YET IMPLEMENTED.}
  \item{ppos}{A string defining a plotting position method.  Implemented options include "beta" the incomplete beta function (as default), "Benard", "mean" also known as Herd-Johnson, "Hazen" or modified Kaplan-Meier, "Kaplan-Meier" with modification for final complete failure, and "Blom.}
  \item{aranks}{A string defining the method for establishing adjusted ranks when suspension data (right censored) are present. Implemented options include "Johnson" (as default) and "KMestimator"}
  \item{ties}{A string defining a method of eliminating ties, or duplicate time valued data, from plotting. Implemented options include "highest" (used as 'Inspection Option #1' by Abernethy), "mean", "lowest", and "sequential".}
}


\value{
Returns a dataframe with the failure data (as potentially reduced by ties argument), the probability plotting positions, and adjusted ranks.
}

\references{
  Robert B. Abernethy, (2008) "The New Weibull Handbook, Fifth Edition"
  Leonard C. Johnson (1964) "The Statistical Treatment of Fatigue Experiments"  
}

\examples{
failures<-c(90,96,30,49,82)
suspensions<-c(100,45,10)
median_percentile_ranks<-getPPP(failures, suspensions)[,2]
}

\keyword{ regression reliability }