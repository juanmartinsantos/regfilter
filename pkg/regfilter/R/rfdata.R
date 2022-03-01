#' Print function for class rfdata
#'
#' This methods displays the basic information about the noise
#' filtering process contained in an object of class \code{rfdata}.
#'
#' This function presents the basic information of the regression noise filter and the resulting
#' noisy dataset contained in the object \code{x} of class \code{rfdata}.
#' The information offered is as follows:
#' \itemize{
#'    \item the name of the noise filtering model.
#'    \item the parameters associated with the noise filtering model.
#'    \item the number of noisy and clean samples in the dataset.
#' }
#'
#' @param x an object of class \code{rfdata}.
#' @param ... other options to pass to the function.
#'
#' @return This function does not return any value.
#'
#' @examples
#' # load the dataset
#' data(rock)
#'
#' # apply the regression noise filter
#' set.seed(9)
#' output <- regAENN(x = rock[,-ncol(rock)], y = rock[,ncol(rock)])
#'
#' # print the results
#' print(output)
#'
#' @seealso \code{\link{summary.rfdata}}, \code{\link{regAENN}}, \code{\link{regENN}}, \code{\link{regGE}}, \code{\link{regEF}}
#'
#' @export
print.rfdata <- function(x, ...){
  cat("\n## Noise model: ", x$filter, sep="\n")

  if(!is.null(x$param)){
    cat("\n## Parameters:\n")
    for (i in 1:length(x$param)){
      cat("- ",attr(x$param,"names")[i]," = ",x$param[[i]],"\n",sep = "")
    }
  }

  cat("\n## Number of noisy and clean samples values:\n")
  ncle <- x$numclean
  nnoi <- x$numnoise
  ntot <- ncle+nnoi
  cat("- Noisy values: ", nnoi,"/",ntot," (",nnoi*100/ntot,"%)","\n",sep="")
  cat("- Clean values: ", ncle,"/",ntot," (",ncle*100/ntot,"%)","\n",sep="")

}

###############################################################
###############################################################
###############################################################
#' Summary function for class rfdata
#'
#' This methods displays a summary containing information about the noise
#' filtering process contained in an \code{object} of class \code{rfdata}.
#'
#' This function presents a summary containing information of the regression noise filter and the resulting
#' dataset contained in the \code{object} of class \code{rfdata}.
#' The information offered is as follows:
#' \itemize{
#'    \item the function call.
#'    \item the name of the regressand noise filter.
#'    \item the parameters associated with the noise filter.
#'    \item the number of noisy and clean samples in the dataset.
#'    \item the indices of the noisy and clean samples (if \code{showid = TRUE}).
#' }
#'
#' @param object an object of class \code{rfdata}.
#' @param showid a logical indicating if the indices of noisy samples must be displayed (default: \code{FALSE}).
#' @param ... other options to pass to the function.
#'
#' @return A list including information related to the noise filtering process contained in the object \code{object} of class {rfdata} with the following elements:
#'
#' \item{xclean}{a data frame with the input attributes of clean samples (without errors).}
#' \item{yclean}{a double vector with the output regressand of clean samples (without errors).}
#' \item{numclean}{an integer vector with the amount of clean samples.}
#' \item{idclean}{an integer vector with the indices of clean samples.}
#' \item{xnoise}{a data frame with the input attributes of noisy samples (with errors).}
#' \item{ynoise}{a double vector with the output regressand of noisy samples (with errors).}
#' \item{numnoise}{an integer vector with the amount of noisy samples.}
#' \item{idnoise}{an integer vector with the indices of noisy samples.}
#' \item{filter}{the full name of the noise filter used.}
#' \item{param}{a list of the argument values.}
#' \item{call}{the function call.}
#'
#' This list also includes the \code{showid} argument.
#'
#' @examples
#' # load the dataset
#' data(rock)
#'
#' # apply the regression noise filter
#' set.seed(9)
#' output <- regAENN(x = rock[,-ncol(rock)], y = rock[,ncol(rock)])
#'
#' # print the results
#' summary(output)
#'
#' @seealso  \code{\link{print.rfdata}}, \code{\link{regEF}}, \code{\link{regDF}}, \code{\link{regHRRF}}, \code{\link{regIRF}}
#'
#' @export
summary.rfdata <- function(object, ..., showid = FALSE){

  object <- structure(object, class = "sum.rfdata")
  object$showid <- showid
  return(object)
}

###############################################################
###############################################################
###############################################################

#' @export
print.sum.rfdata <- function(x, ...){

  cat("\n########################################################\n")
  cat("\tNoise filtering process: Summary\n")
  cat("########################################################\n\n")

  call <- deparse(x$call, getOption("width"))

  cat("## Original call:", call, sep = "\n")

  print.rfdata(x)

  if(x$showid){
    cat("\n## Indices of noisy samples:\n")
    id <- paste0(x$idnoise, collapse = ", ")
    if(id == "")
      id <- "-"
    cat("- Output class: ", id, "\n", sep = "")
  }

}

###############################################################
###############################################################
###############################################################
