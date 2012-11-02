\name{problem1}
\alias{Problem 1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plots a density function
%%  ~~function to do ... ~~
}
\description{Plots the probability density function over a user specificed range using a user specified number of samples
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
problem1(Filename, Distribution Function, Interval , Number of Samples, Compile Option)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Filename}{The desired name of the output file}
  \item{Distribution Function}{The desired distribution function for use in the function}
  \item{Interval}{A vector that's first value is the lower bound and second is the upper bound}
  \item{Number of Samples}{The number of samples that should be taken when plotting the distribution}
  \item{Compile Option}{Intended to control the rendering of a tikz PDF. If set to true it will compile a pdf. If set to false it will not compile a pdf.}
%%     ~~Describe \code{x} here~~
}
\details{Generates a plot of a probability distribution function. The function works by randomly generating inputs to select within the desired range. It then generates the corresponding likelyhoods for each generated sample. The samples are then plotted. The plot is then rendered and saved if desired as a PDF file.}
%%  ~~ If necessary, more details than the description above ~~
\value{Returns a PDF of the approximated pdf
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{Class
%% ~put references to the literature/web site here ~
}
\author{Jonathan Ho <jho19@jhu.edu>
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
problem1('bmw1Series',dnorm,c(-5,5),200,TRUE)
problem1('bmw1Series',dnorm,c(-5,5),5,FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
