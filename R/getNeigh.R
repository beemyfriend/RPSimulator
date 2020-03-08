#'Check for threshold
#'
#'Function to see if enough neighbors create a threshold
#'
#'@param g result from getAdjTable
#'@param threshold number of neighbors necessary to change cell's color
#'
#'@return a vector of integers representing colors of which most neighbors agree 0 represents no neighborhood agreement.
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
