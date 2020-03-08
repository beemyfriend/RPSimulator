#'Create an adjacency table for each cell
#'
#'Determine number of values present in every one of the raster's cells' neighborhood.
#'
#'@param rast the raster being inspected
#'@param directions either 4, 8, 16, or 'bishop' to define adjacent/neighbors
#'
#'@return a table of ncell x nclr dimensions
getAdjTable <- function(rast, directions = 8){
  #get adjacent cells' index for each raster cell
  adj <- raster::adjacent(rast,
                          1:raster::ncell(rast),
                          directions,
                          pairs=TRUE,
                          sorted = T)

  #get values of all adjacent cells
  adj[,2] <- rast[adj[,2]]

  #create a cross table of each cell's index and the number each color value shows up
  tb <- table(adj[,1], adj[,2])
}
