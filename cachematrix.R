## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## ---

## Making inverse of a matrix.
## Creates a special "matrix" object
## Can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        itsinverse <- NULL
        set <- function(x) {
                cache <<- x;
                itsinverse <<- NULL;
        }
        get <- function() return(cache);
        setinv <- function(inv) itsinverse <<- inv;
        getinv <- function() return(itsinverse);
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## Calculates the inverse of the special
## matrix returned by previous function. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        solveinverse <- mtx$getinv()
        if(!is.null(solveinverse)) {
                return(solveinverse)
        }
        data <- mtx$get()
        solveinvserse <- solve(data, ...)
        mtx$setinv(solveinverse)
        return(solveinverse)
}
