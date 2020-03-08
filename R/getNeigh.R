#function to see if neighbors have threshold
getNeigh <- function(g, threshold = 3){
  apply(g, 1, function(x){
    #if threshold isn't met return 0/the cell's own color
    if(!any(x >= threshold)) return(0)

    #get neighborhood's max color
    maxNeigh = which(x == max(x))

    #if multiple color is max, select random max
    maxNeigh <- sample(names(maxNeigh), 1)

    return(maxNeigh)
  })
}
