problem1 <- function(filename=NULL,
                     fcnname=NULL,
                     nrange=NULL,
                     nsample=NULL,
                     compile=NULL){
  outputtexfile = paste(filename, '.tex', sep ='')
  library(tikzDevice);
  tikz(file=outputtexfile,standAlone=T);
  xbeg = nrange[1]
  xend = nrange[2]
  xval = seq(xbeg, xend, length=nsample)
  yval = fcnname(xval)
  plot(xval, yval, type = 'l', main = '',  xlab = '\\verb+x+', ylab = '\\verb+dnorm(x)+')
  dev.off() 
  tools::texi2pdf(outputtexfile)
}
