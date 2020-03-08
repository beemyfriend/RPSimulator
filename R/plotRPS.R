plotRPS <- function(rastList, nclr, filePath){
  animation::saveGIF({
    lapply(rastList, function(x){
      raster::plot(x,
                   col = hsv(seq(1/nclr, 1, length.out = nclr)))
    })
  },
  movie.name = filePath,
  ani.width = 600,
  ani.height = 600,
  interval = .1)
}




