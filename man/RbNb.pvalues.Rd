% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{RbNb.pvalues}
\alias{RbNb.pvalues}
\title{p-values for testing whether the bivariate Rb/Nb distribution is Gaussian
 at two Jemez sources.}
\format{A matrix with 2 rows and 6 variables:
\describe{
  \item{AD.Rb}{A vector with results from the Anderson-Darling test for a
  Rb having a univariate Gaussian distribution.}
  \item{AD.Nb}{A vector with results from the Anderson-Darling test for a
  Nb having a univariate Gaussian distribution.}
  \item{SW.Rb}{A vector with results from the Shapiro-Wilk test for a
  Rb having a univariate Gaussian distribution.}
  \item{SW.Nb}{A vector with results from the Shapiro-Wilk test for a
  Nb having a univariate Gaussian distribution.}
  \item{Marida.skew}{A vector with results from the Mardia test for a
  bivariate Gaussian distribution based on skewness.}
  \item{Marida.kurtosis}{A vector with results from the Mardia test for a
  bivariate Gaussian distribution based on kurtosis.}
  }}
\source{
The matrix was output from the function ps_2dPlotGauss().
}
\usage{
RbNb.pvalues
}
\description{
A data set containing p-values from univariate and bivariate tests.  The
labels for the rows are the codes for the Jemez sources.
}
\keyword{datasets}
