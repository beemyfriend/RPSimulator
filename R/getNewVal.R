getNewVal <- function(rast, neigh, nclr = 3){
  purrr::map2_dbl(rast[1:raster::ncell(rast)],
                  neigh,
                  function(x,y){
    #if cell's neighborhood is 0 return cell's own color
    if(y == 0) return(x)

    #if cell is last color and neighborhod is first color, return first color
    if(x == nclr & y == 1) return(1)

    #if cell is color and neighborhood is subsequent color, return subsequent color
    if(x == (y - 1)) return(y)

    #return cell's color by default
    return(x)
  })
}
