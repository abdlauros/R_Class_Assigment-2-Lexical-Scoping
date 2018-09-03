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