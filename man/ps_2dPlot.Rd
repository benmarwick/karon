% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ps_2dPlot.R
\name{ps_2dPlot}
\alias{ps_2dPlot}
\title{ps_2dPlot}
\usage{
ps_2dPlot(
  doc = "ps_2dPlot",
  data,
  GroupVar,
  AnalyticVars,
  ID = "none",
  Groups,
  ByGroup = FALSE,
  PlotAllGroups = FALSE,
  VariablePairs,
  PlotPoints = TRUE,
  LowessLine = TRUE,
  Lowess_f = NA,
  PlotMedians = FALSE,
  PlotEllipses = FALSE,
  Ellipses = c(0.95, 0.99),
  KernelSmooth = FALSE,
  Kernelwidth = 0.3,
  PlotHulls = FALSE,
  parRowsCols = c(2, 2),
  Colors = c("red", "black", "blue", "green", "purple"),
  legendLoc = "topleft",
  Identify = FALSE
)
}
\arguments{
\item{doc}{A string documenting use written to the output list;
default is the function name}

\item{data}{A data frame containing the data to be analyzed}

\item{GroupVar}{The name for the variable defining grouping; can be " " if no grouping}

\item{AnalyticVars}{The names of analytic variables to be used}

\item{ID}{The character value of the name of a lab ID, "none" (the default) if none}

\item{Groups}{A vector of values of GroupVar for which plots
are to be done; if "All", use all groups; if " ", no grouping}

\item{ByGroup}{Logical.  If TRUE, show scatterplot for each group
for each selection of 2 variables; if FALSE (the default),
 all specified groups are on one plot}

\item{PlotAllGroups}{Logical.  If TRUE (default is FALSE), all groups are one one plot, with
group membership shown.  If PlotEllipses is TRUE, confidence ellipses are also shown.}

\item{VariablePairs}{The names of two analytic variables to be shown in the plots, vector of length 2
or matrix with 2 columns; if a matrix, the set of plots is produced for each row.}

\item{PlotPoints}{Logical.  If TRUE (the default), all points are plotted; if FALSE, no points are plotted}

\item{LowessLine}{Logical. If TRUE, a lowess line is plotted for each group; if FALSE, no line is plotted}

\item{Lowess_f}{A parameter for lowess() less than or equal to 1, defining the range of x-values used;
if NA (the default), uses the default value of 0.67}

\item{PlotMedians}{if TRUE, the code for each group is plotted at the median of the values
for that group; default is FALSE}

\item{PlotEllipses}{Logical.  If TRUE, Gaussian confidence ellipses are plotted for each group;
if F (the default), no ellipses are plotted}

\item{Ellipses}{single value or vector of values with confidence values for the ellipses; default is c(0.95,0.99)}

\item{KernelSmooth}{Logical.  If TRUE, a kernel smooth is plotted for each group;
if FALSE (the default), no kernel smooth is plotted}

\item{Kernelwidth}{the proportion of the range of x-values used in the kernel smooth;
default is 0.3}

\item{PlotHulls}{if TRUE, the convex hull is drawn for each set of points; if FALSE (the default),
no hulls are drawn}

\item{parRowsCols}{A vector of length 2, with the numbers of rows and columns for a plot
when plots are shown by group; default is c(2,2)}

\item{Colors}{A vector with the colors of plotted points, used sequentially for the groups}

\item{legendLoc}{Character.  Identifies the location of the legend for a plot showing all groups
on one plot.  Default is "topleft"; alternatives are "bottomleft", "topright", "bottomright"}

\item{Identify}{if TRUE, user can identify points of interest in the plots; default is FALSE}
}
\value{
\itemize{
\item{usage:}{  A string with the contents of the argument doc,
the date run, the version of R used}
\item{dataUsed:}{  The contents of the argument data restricted
to the groups used}
\item{dataNA:}{  A data frame with observations containing at
least one missing value for an analysis variable, NA if no missing values}
\item{params:}{  A list with the values of the grouping, logical,
 numeric and Color arguments}
\item{analyticVars:}{  A vector with the value of the argument AnalyticVars}
\item{dataCheck: }{ If ps_identify = TRUE, a data frame with the information on user-identified points
 of interest}
 }
}
\description{
Create 2-dimensional scatter plots, using ps_plot().
}
\section{Details}{

With multiple plots, execution halts after each page is complete; enter c (continue) at
the prompt to continue execution.  For a plot of the labelled convex hulls of the groups,
see the example code for the required combination of logical arguments.
}

\examples{

# All Jemez obsidian sources on one plot
data(ObsidianSources)
analyticVars<-c("Rb","Nb","Zr","Y","Sr")
temp<-ps_2dPlot(data=ObsidianSources,GroupVar="Code",Groups="All",ByGroup=FALSE,
AnalyticVars=analyticVars,VariablePairs=c("Rb","Nb"),PlotEllipses=TRUE,PlotAllGroups=TRUE)

# Plots of obsidian source data for each source with confidence ellipses and lowess lines
data(ObsidianSources)
analyticVars<-c("Rb","Nb","Zr","Y","Sr")
temp<-ps_2dPlot(data=ObsidianSources,GroupVar="Code",Groups="All",ByGroup=TRUE,
AnalyticVars=analyticVars,VariablePairs=c("Rb","Nb"),PlotEllipses=TRUE,PlotAllGroups=FALSE)

# Plot of the labelled convex hulls of the obsidian source data for each source
data(ObsidianSources)
analyticVars<-c("Rb","Nb","Zr","Y","Sr")
temp<-ps_2dPlot(data=ObsidianSources,GroupVar="Code",Groups="All",ByGroup=FALSE,
AnalyticVars=analyticVars,VariablePairs=c("Rb","Nb"),PlotEllipses=FALSE,LowessLine=FALSE,
PlotHulls=TRUE,PlotMedians=TRUE,PlotPoints=FALSE)

}
