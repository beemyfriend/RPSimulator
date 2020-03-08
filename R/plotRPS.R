#'Animate results from RPS simulation
#'
#'Create a .gif animation of RPS simulation
#'
#'@param rastList list of rasters resulting from runRPS()
#'@param nclr number of colors used in runRPS()
#'@param filePath file name to provide gif
#'
#'@return Nothing is returned. A gif is created if successful
#'@export

plotRPS <- function(rastList, nclr, filePath){
  animation::saveGIF({
    lapply(rastList, function(x){
      raster::plot(x,
                   col = grDevices::hsv(seq(1/nclr, 1, length.out = nclr)))
    })
  },
  movie.name = filePath,
  ani.width = 600,
  ani.height = 600,
  interval = .1)
}




