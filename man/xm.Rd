% Generated by roxygen2 (4.0.2): do not edit by hand
\name{xm}
\alias{xm}
\alias{xmt}
\title{Convert a matrix to LaTeX code.}
\usage{
xm(x, digits = NA, mtype = NA, round = NA, na = NA)

xmt(x, digits = NA, mtype = NA, round = NA, na = NA)
}
\arguments{
\item{x}{A matrix object.}

\item{digits}{Number of digits to display (if matrix is numeric).}

\item{mtype}{LaTeX matrix type, i.e. round braces, curly braces etc.
Available types are \code{"matrix", "pmatrix", "bmatrix",
"Bmatrix", "vmatrix", "Vmatrix", "bordermatrix"}.}

\item{round}{Logical. Round numbers? If not numbers are trimmed only.}

\item{na}{How to replace NA values? (default is \code{""}).}
}
\value{
Object of class \code{texcode}.
}
\description{
Convert a matrix to LaTeX code.
}
\examples{
m <- matrix(1:9, ncol=3)
xm(m)

# change digits

"$" \%\% xm(m) \%\% "$"

"$" + xm(m) + "$"

# matrix types
x <- matrix(1:4, 2)
xm(x, mtype="matrix")
xm(x, mtype="bmatrix")

rownames(x) <- letters[1:2]
colnames(x) <- LETTERS[1:2]
xm(x, mtype="bordermatrix")
}
\author{
Mark Heckmann
}

