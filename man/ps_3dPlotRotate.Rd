% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ps_3dPlotRotate.R
\name{ps_3dPlotRotate}
\alias{ps_3dPlotRotate}
\title{ps_3dPlotRotate}
\usage{
ps_3dPlotRotate(
  doc = "ps_3dPlotRotate",
  data,
  GroupVar,
  Groups,
  AnalyticVars,
  Selections,
  ByGroup = FALSE,
  ptSize = 5,
  Colors = c("red", "black", "blue", "green", "purple"),
  folder = " ",
  dsFile
)
}
\arguments{
\item{doc}{A string documenting usage written to the list return, default is the function name}

\item{data}{A data frame containing the data to be analyzed}

\item{GroupVar}{The name for variable defining grouping; a group variable must be specified}

\item{Groups}{A vector of values of group variable for which plots are to be done;
"All": use all groups;" ": no grouping}

\item{AnalyticVars}{A vector of names (character values) of analytic results}

\item{Selections}{A vector of length 3, or a matrix or data frame with 3 columns, with combinations to be plotted}

\item{ByGroup}{Logical. If TRUE, show scatterplot for each group for each selection of 3 variables;
default is FALSE}

\item{ptSize}{The size of plotted points, default is 5 (a larger value gives larger points)}

\item{Colors}{A vector with the color(s) of plotted points; default is a vector
red, black, blue, green, purple}

\item{folder}{The folder to which one or more files with images will be saved;
default is " " (no files saved)}

\item{dsFile}{The complete path to a file in folder to which each image will be saved;
if folder is not " ", this must be a valid path and file name (ends in .pdf for current function)}
}
\value{
A list with the following components:
\itemize{
\item{usage}{  A string with the contents of the argument doc, the date run, the version of R used}
\item{dataUsed}{  The contents of the argument data restricted to the groups used}
\item{dataNA:}{  A data frame with observations containing a least one missing value
  for an analysis variable, NA if no missing values}
\item{params}{  A list with the values of the grouping, logical, numerical, and Color arguments}
\item{analyticVars}{  A vector with the value of the argument AnalyticVars}
\item{selections}{  A vector or matrix with the value of the argument Selections}
\item{location}{  The value of the argument folder}
}
}
\description{
Create 3-dimensional data plot(s) that can be rotated
}
\section{}{
 Details:
See the vignette for details on the use of colors.  The rotated 3d plot can be saved to a file
located at dsFile.  The code saves a file as a pdf; see the documentation for the function
rgl.postscript() for changing the format to postscript, eps, tex, or others.  Point sizes may
appear much larger in a saved file than on the monitor.
}

\examples{
data(ObsidianSources)
analyticVars<-c("Rb","Sr","Y","Zr","Nb")
plot_3d_rotate<-ps_3dPlotRotate(data=ObsidianSources, GroupVar="Code", Groups=c("A","B"),
              AnalyticVars = analyticVars, Selections=analyticVars[1:3],ByGroup=TRUE)
# two plots
data(ObsidianSources)
analyticVars<-c("Rb","Sr","Y","Zr","Nb")
plot_3d_rotate<-ps_3dPlotRotate(data=ObsidianSources, GroupVar="Code", Groups=c("A","B"),
                                AnalyticVars = analyticVars,
                                Selections=rbind(analyticVars[1:3],analyticVars[2:4]))
}
