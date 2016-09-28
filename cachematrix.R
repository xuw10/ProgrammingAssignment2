## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) 
{
    inverseMatrix <- NULL  
    setMatrix <- function(y)
    {
        x <<- y
        inverseMatrix <- NULL
    }
  
    getMatrix <- function() x
    getInverse <- function() 
    {
        if(is.null(inverseMatrix))
        {      
            inverseMatrix <<- solve(x)
        }
        else
        {
            message("Fetching the inverse from cache")  
        }
                    
    inverseMatrix
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
