\name{scaleApp}
\alias{scaleApp}
\title{Scale Application Instances}
\usage{
  scaleApp(appName, instances, account = NULL,
    quiet = FALSE)
}
\arguments{
  \item{appName}{Name of application}

  \item{instances}{Number of parallel instances to be used
  for the application}

  \item{account}{Account name. If a single account is
  registered on the system then this parameter can be
  omitted.}

  \item{quiet}{Request that no status information be
  printed to the console}
}
\description{
  Scale the number of parallel instances used for an
  application deployed to ShinyApps.
}
\examples{
\dontrun{

# specify that an application use 3 instances
scaleApp("myapp" instances = 3)
}
}
\seealso{
  \code{\link{applications}}, \code{\link{deployApp}}, and
  \code{\link{terminateApp}}
}

