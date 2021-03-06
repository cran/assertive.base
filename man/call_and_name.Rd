% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{call_and_name}
\alias{call_and_name}
\title{Call a function, and give the result names.}
\usage{
call_and_name(fn, x, ...)
}
\arguments{
\item{fn}{A function to call.  See note below.}

\item{x}{The first input to \code{fn}.}

\item{...}{Optional additional inputs to \code{fn}.}
}
\value{
The result of \code{fn(x, ...)}, with names given by the
argument \code{x}.
}
\description{
Calls a function, and names the result with the first argument.
}
\note{
The function, \code{fn}, should return an object with the 
same length as the input \code{x}.  For speed and simplicity, this
isn't checked; it is up to the developer of the assertion to make
sure that this condition holds.
}
\examples{
call_and_name(is.finite, c(1, Inf, NA))

# Make sure that the output is the same size as the input.
# Don't do this:
dont_stop(call_and_name(isTRUE, list(TRUE, FALSE, NA)))
# Do this instead:
call_and_name(
  Vectorize(isTRUE, SIMPLIFY = FALSE),
  list(TRUE, FALSE, NA)
)
}
\seealso{
\code{\link{cause}} and \code{\link{na}}.
}
