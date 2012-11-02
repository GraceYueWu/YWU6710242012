problem1 <- function(filename=NULL,
                     gcnname=NULL,
                     range=NULL,
                     nsample=NULL,
                     compile=NULL){
  outputtexfile = paste(filename, '.tex', sep ='')
  require(tikzDevice);
  tikz(file=outputtexfile,standAlone=T);
  xbeg = range[1]
  xend = range[2]
  xval = seq(xbeg, xend, length=nsample)
  yval = gcnname(xval)
  plot(xval, yval, type = 'l', main = '',  xlab = '\\verb+x+', ylab = '\\verb+dnorm(x)+')
  dev.off() 
  tools::texi2pdf(outputtexfile)
}
