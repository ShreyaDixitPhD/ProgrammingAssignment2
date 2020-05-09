## The following set of functions uses the Solve function to calculate the inverse of the matrix. 
## If the inverse of the matrix is already cached then instead of calculating it again the cached value is returned. 

## Finds the inverse of the matrix and caches it. Using 'm' to store the the inverse of the matrix when it is calculated. 

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() {x}
    setinverse <- function(Z) {m <<- z}
    getinverse <- function() {m}
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Solve is an exisiting function that calculates the Matrix's inverse. However, it goes about doing this by checking if there is cached inverse. 
## In there is a cached value already exisiting it will print it in this case 'm' after the message getting cached data. 
## Or else it calculate the inverse otherwise.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
