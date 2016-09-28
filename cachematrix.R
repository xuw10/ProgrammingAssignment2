## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates a special matrix that can cache its inverse
makeCacheMatrix <- function(x = matrix()) 
{
    inverseM <- NULL  
    setMatrix = function(y)
    {
        x <<- y
        inverseM <- NULL
    }
  
    getMatrix <- function() x

    setInverse = function (inverse) inverseM <<- inverse

    getInverse = function() inverseM

    list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
      
}


## Write a short comment describing this function
## This function returns a matrix that is the 
## inverse of the input x.
cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
    inverseM <- x$getInverse()
    if(!is.null(inverseM)
    {
        return(inverseM)
    }
    get <- x$getMatrix()
    inverseM <- solve(get)
    x$setInverse(inverseM)
    inverseM

}
