## Put comments here that give an overall description of what your
## functions do
##The assignment was for us to write 2 functions that would cache the inverse of a matrix.

## Write a short comment describing this function
##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        k <- NULL
        set <- function(y){
                x <<- y
                k <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) k <<- inverse
        getInverse <- function() k 
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}


## Write a short comment describing this function
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        k <- x$getInverse()
        if(!is.null(k)){
                message("getting cached data")
                return(k)
        }
        mat <- x$get()
        k <- solve(mat,...)
        x$setInverse(j)
        k
}
