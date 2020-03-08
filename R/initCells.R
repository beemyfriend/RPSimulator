#'Initialize cells
#'
#'Create an initial raster to start simulation
#'
#'@param nrow number of rows in raster
#'@param ncol number of columns in raster
#'@param nclr number of colors used in simulation
#'
#'@return a list of rasters representing each iteration of simulation
initCells <- function(nrow, ncol, nclr = 3){
  r <- raster::raster(ncol=ncol, nrow=nrow, xmn = 0, xmx = ncol, ymn = 0, ymx = nrow)
  r[] <- round(stats::runif(raster::ncell(r), 1, nclr))
  return(r)
}
