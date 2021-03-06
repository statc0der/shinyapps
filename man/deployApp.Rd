\name{deployApp}
\alias{deployApp}
\title{Deploy an Application}
\usage{
  deployApp(appDir = getwd(), appName = NULL,
    account = NULL, upload = TRUE,
    launch.browser = getOption("shinyapps.launch.browser", interactive()),
    quiet = FALSE)
}
\arguments{
  \item{appDir}{Directory containing application. Defaults
  to current working directory.}

  \item{appName}{Name of application (names must be unique
  with ShinyApps accounts). Defaults to the base name of
  the specified \code{appDir}.}

  \item{account}{ShinyApps account to deploy application
  to. This parameter is only required for the initial
  deployment of an application when there are multiple
  accounts configured on the system (see \link{accounts}).}

  \item{upload}{If \code{TRUE} (the default) then the
  application is uploaded from the local system prior to
  deployment. If \code{FALSE} then it is re-deployed using
  the last version that was uploaded.}

  \item{launch.browser}{If true, the system's default web
  browser will be launched automatically after the app is
  started. Defaults to \code{TRUE} in interactive sessions
  only.}

  \item{quiet}{Request that no status information be
  printed to the console during the deployment.}
}
\description{
  Deploy a \link[shiny:shiny-package]{shiny} application to
  the ShinyApps service.
}
\details{
  Prior to deploying an application you should call the
  \code{\link{setAccountInfo}} function to register your
  ShinyApps account on the local system.

  After the initial deployment of an application from a
  given \code{appDir}, subsequent deployments will
  automatically use the \code{appName} and \code{account}
  parameters of the initial deployment (unless overriden
  explicitly).

  For details on options that affect the behavior of
  \code{deployApp} see the article on
  \link[shinyapps:shinyappsOptions]{package options}.
}
\examples{
\dontrun{

# deploy the application in the current working dir
deployApp()

# deploy an application in another directory
deployApp("~/projects/shiny/app1")

# deploy using an alternative application name
deployApp("~/projects/shiny/app1", appName = "myapp")

# deploy specifying an explicit account name, then
# redeploy with no arguments (will automatically use
# the previously specified account)
deployApp(account = "jsmith")
deployApp()

# deploy but don't launch a browser when completed
deployApp(launch.browser = FALSE)
}
}
\seealso{
  \code{\link{applications}}, \code{\link{terminateApp}},
  and \code{\link{scaleApp}}
}

