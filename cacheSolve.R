
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
		## Return a matrix that is the inverse of 'x'
        matrix <- x$getinv()
        if(!is.null(matrix)) {
                message("getting cached data")
                return(matrix)
        }
        data <- x$get()
        matrix <- solve(data, ...)
        x$setinv(matrix)
        matrix
}
