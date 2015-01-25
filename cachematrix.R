## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## inv variable stores the inverse of the matrix passed

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)

}


## Write a short comment describing this function

## if it wasn't stored we calculate the inverse and return it or we just return
## the stored result


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
