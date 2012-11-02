problem1 <- function(filename=NULL,
                     fccnname=NULL,
                     range=NULL,
                     nsample=NULL,
                     compile=NULL){
  outputtexfile = paste(filename, '.tex', sep ='')
  require(tikzDevice);
  tikz(file=outputtexfile,standAlone=T);
  #tikz(outputtexfile,standAlone=TRUE)
  xbeg = range[1]
  xend = range[2]
  xval = seq(xbeg, xend, length=nsample)
  yval = fcnname(xval)
  plot(xval, yval, type = 'l', main = '',  xlab = '\\verb+x+', ylab = '\\verb+dnorm(x)+')
  dev.off()
  if(compile==TRUE){
    tools::texi2pdf(outputtexfile)
  }
  #plot(xval,yval,type='l')
  dev.off()
}