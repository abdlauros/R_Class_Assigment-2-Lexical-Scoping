# R_Class_Assigment-2-Lexical-Scoping

## CACHE SOLVE
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


## Make Cache Matrix

makeCacheMatrix <- function(x = matrix()) {
        matrix <- NULL
        set <- function(y) {
                x <<- y
                matrix <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) matrix <<- inverse
        getinv <- function() matrix
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}
