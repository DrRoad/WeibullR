\name{MRRw3p}
\alias{MRRw3p}

\title{Quick Fit, Median rank regression for weibull distribution in 3-parameters }

\description{
 Determination of Weibull fitting parameters with third, translation parameter optimization. Result provided with goodness
 of fit measures and confidence interval bounds with optional graphical display.
}

\usage{
MRRw3p(x, s=NULL, bounds=FALSE, show=FALSE) 
}

\arguments{
  \item{x}{A vector of failure data.}
  \item{s}{An optional vector of suspension data.}
  \item{bounds}{A logical argument defining whether confidence interval bounds should be calculated by pivotal analysis.}
  \item{show}{A logical argument defining whether a simple graphical output is desired.}
}

\details{
 This function is intended to provide a simple casual method of standard weibull analysis based on default methods, without options.
 It also provides examples for handling the pivotal values returned from pivotalMC and performance of the likelihood ratio test. 
}

\value{
 When the bounds argument is set to FALSE this function returns a vector with named elements for Eta, Beta, Rsqr,
 AbPval (Abernethy's P-value), and LL (log-likelihood).  When the bounds argument is set to TRUE a list is returned 
 containing the vector as described and a dataframe of confidence interval bound values at a fixed set of descriptive quantiles,
 dq<-c(.01, .02, .05, .10, .15, .20, .30, .40, .50,  .60, .70, .80, .90, .95, .99), suitable for comparison with other software.
}

\references{
  Robert B. Abernethy, (2008) "The New Weibull Handbook, Fifth Edition"
  Leonard C. Johnson (1964) "The Statistical Treatment of Fatigue Experiments"  
}

\examples{
failures<-c(90,96,30,49,82)
suspensions<-c(100,45,10)
fit<-MRRw3p(failures, suspensions)
}

\keyword{ regression reliability }