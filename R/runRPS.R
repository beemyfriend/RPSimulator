#'Run Rock-Paper-Scissor Simulation
#'
#'Run RPS simulation over a set amount of iterations over a raster
#'
#'@param nrow number of rows in raster
#'@param ncol number of columns in raster
#'@param nclr number of colors used in simulation
#'@param iterations number of iterations for simulation
#'@param directions either 4, 8, 16, or 'bishop' to define adjacent/neighbors
#'@param threshold number of agreeing neighbors necessary to change cell
#'
#'@return a list of rasters representing each iteration of simulation
#'@export
runRPS <- function(nrow = 100,
                   ncol = 100,
                   nclr = 3,
                   iterations = 100,
                   directions = 8,
                   threshold = 3){
  #initiate list of rasters
  answer = list(initCells(nrow, ncol, nclr))

  for(i in 2:iterations){
    x = answer[[i-1]]
    tb <- getAdjTable(x, directions)
    neigh <- as.integer(getNeigh(tb), threshold)
    newVal <- getNewVal(x, neigh, nclr)
    x[1:raster::ncell(x)] <- newVal
    answer[[i]] <- x
  }

  return(answer)
}
