
## This function creates a special "matrix" object that can cache its inverse.

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
