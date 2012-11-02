problem1 <- function(filename=NULL,
                     fcnname=NULL,
                     range=NULL,
                     nsample=NULL,
                     compile=NULL){
  outputtexfile = paste(filename, '.tex', sep ='')
  require(tikzDevice);
  tikz(file=outputtexfile,standAlone=T);
  #tikz(outputtexfile,standAlone=TRUE)
  xbeg = range[1]
  xend = range[2]
  xval = runif(nsample, xbeg, xend)
  xval = sort(xval, decreasing=F)
  yval = fcnname(xval)
  plot(xval, yval, type = 'l', main = '',  xlab = '\\verb+x+', ylab = '\\verb+dnorm(x)+')
  dev.off()
  if(compile){
    tools::texi2pdf(outputtexfile)
  }
  #plot(xval,yval,type='l')
}