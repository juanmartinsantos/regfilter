% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rfCDF.R
\name{rfCDF}
\alias{rfCDF}
\alias{rfCDF.default}
\alias{rfCDF.formula}
\title{Covering Distance Filtering for Regression}
\usage{
\method{rfCDF}{default}(x, y, subsets = 5, VCdim = 0.1 * nrow(x), prob = 0.05, ...)

\method{rfCDF}{formula}(formula, data, ...)
}
\arguments{
\item{x}{a data frame of input attributes.}

\item{y}{a double vector with the output regressand of each sample.}

\item{subsets}{an integer with the number of subsets to be used (default: 5).}

\item{VCdim}{an integer specifying the VC-dimension (default: 0.1*\code{nrow(x)}).}

\item{prob}{a double with the probability used in the filtering process (default: 0.05).}

\item{...}{other options to pass to the function.}

\item{formula}{a formula with the output regressand and, at least, one input attribute.}

\item{data}{a data frame in which to interpret the variables in the formula.}
}
\value{
The result of applying the regression filter is a reduced dataset containing the clean samples (without errors or noise), since it removes noisy samples (those with errors).
This function returns an object of class \code{rfdata}, which contains information related to the noise filtering process in the form of a list with the following elements:
\item{xclean}{a data frame with the input attributes of clean samples (without errors).}
\item{yclean}{a double vector with the output regressand of clean samples (without errors).}
\item{numclean}{an integer with the amount of clean samples.}
\item{idclean}{an integer vector with the indices of clean samples.}
\item{xnoise}{a data frame with the input attributes of noisy samples (with errors).}
\item{ynoise}{a double vector with the output regressand of noisy samples (with errors).}
\item{numnoise}{an integer with the amount of noisy samples.}
\item{idnoise}{an integer vector with the indices of noisy samples.}
\item{filter}{the full name of the noise filter used.}
\item{param}{a list of the argument values.}
\item{call}{the function call.}

Note that objects of the class \code{rfdata} support \link{print.rfdata}, \link{summary.rfdata} and \link{plot.rfdata} methods.
}
\description{
Application of the rfCDF noise filtering method in a regression dataset.
}
\details{
\code{CDF} divides the dataset into two subsets, \emph{Din} and \emph{Dout}, which represent samples within and outside the covering interval, respectively. 
Samples in \emph{Din} are considered to have low noise and are retained in the final clean set of samples. 
Then, the noise of each sample is estimated using the \emph{Covering Distance} function. 
Samples in \emph{Dout} can be removed one by one based on their absolute noise, with samples exhibiting larger noise removed first. 
Each time a new sample is removed, an objective function can be estimated. 
Finally, the removing operation is stopped at the maximum value of the objective function.
}
\examples{
# load the dataset
data(rock)

# usage of the default method
set.seed(9)
out.def <- rfCDF(x = rock[,-ncol(rock)], y = rock[,ncol(rock)])

# show results
summary(out.def, showid = TRUE)

# usage of the method for class formula
set.seed(9)
out.frm <- rfCDF(formula = perm ~ ., data = rock)

# check the match of noisy indices
all(out.def$idnoise == out.frm$idnoise)

}
\references{
J. Gaoxia, W. Wenjian, Q. Yuhua, L. Jiye,
\strong{A Unified Sample Selection Framework for Output Noise Filtering: An Error-Bound Perspective.}
\emph{Journal of Machine Learning Research}, 22:800–865, 2021.
}
\seealso{
\code{\link{regEF}}, \code{\link{regIPF}}, \code{\link{regGE}}, \code{\link{print.rfdata}}, \code{\link{summary.rfdata}}
}
