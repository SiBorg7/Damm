\name{DammDigit}
\alias{DammDigit}
\title{Get Damm check digit}
\usage{
  DammDigit(x)
}
\arguments{
  \item{x}{Number that you want the check digit for.}
}
\description{
  Get Damm check digit
}
\examples{
x <- 12345
DammDigit(x)
# so we need to add 9 to the end of the number
x <- 123459
DammDigit(x)
# The 0 tells us it works
}

