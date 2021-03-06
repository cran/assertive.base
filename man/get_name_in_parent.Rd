% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{get_name_in_parent}
\alias{get_name_in_parent}
\title{Get the name of a variable in the parent frame}
\usage{
get_name_in_parent(x, escape_percent = TRUE)
}
\arguments{
\item{x}{Variable to get the name of.}

\item{escape_percent}{Logical. If \code{TRUE}, percent signs are doubled, 
making the value suitable for use with \code{sprintf} (and hence by 
\code{false} and \code{na}).}
}
\value{
A string giving the name of the input in the parent frame.
}
\description{
Gets the name of the input in the parent frame.
}
\examples{
outside <- 1
f <- function(inside, escape_percent) 
{
  get_name_in_parent(inside, escape_percent)
}
f(outside, TRUE) 
f('10\%', TRUE) 
f('10\%', FALSE)
}
