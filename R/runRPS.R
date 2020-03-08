runRPS <- function(nrow = 100,
                   ncol = 100,
                   nclr = 3,
                   iterations = 100,
                   directions = 8){
  #initiate list of rasters
  answer = list(initCells(nrow, ncol, nclr))

  for(i in 2:iterations){
    x = answer[[i-1]]
    tb <- getAdjTable(x, directions)
    neigh <- as.integer(getNeigh(tb))
    newVal <- getNewVal(x, neigh)
    x[1:raster::ncell(x)] <- newVal
    answer[[i]] <- x
  }

  return(answer)
}
