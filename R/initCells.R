initCells <- function(nrow, ncol, nclr = 3){
  r <- raster::raster(ncol=ncol, nrow=nrow, xmn = 0, xmx = ncol, ymn = 0, ymx = nrow)
  r[] <- round(runif(raster::ncell(r), 1, nclr))
  return(r)
}
