\name{problem1}
\alias{problem1}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{problem1
%%  ~~function to do ... ~~
}
\description{This function generate a latex file that could be compiled and generate a pdf plot of randomly generated numbers of certain distribution.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
problem1(filename,fcnname,nrange,nsample,compile)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{A character vector, e.g.,filename='bmw1Series'.}
  \item{fcnname}{A function object for a distribution function.}
  \item{nrange}{A numeric vector with two numbers, stating upper and lower bound of the range, e.g., nrange=c(-5,5).}
  \item{nsample}{An numeric vector with single number, indicating number of sample.}
  \item{compile}{Either TURE of FALSE.}
%%     ~~Describe \code{x} here~~
}
\value{An object of problem1 will be a .tex file or a .tex file and a pdf file when set compile equal to TRUE.
The pdf file will be a plot with the following components:
xlab: "X".
Ylab: Discription of density function.
plot: A line of plot of the points.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{Yue Wu
%%  ~~who you are~~
}
\note{Cooperation with Latex.
%%  ~~further notes~~
}
%% ~Make other sections like Warning with \section{Warning }{....} ~
\examples{
problem1('bmw1Series',dnorm,c(-5,5),20,TRUE)
#This will generate a plot of 20 points normally distributed within range -5 to 5.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

