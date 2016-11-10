## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<- NULL
        ##set the matrix
         set <- function(y) {
                x <<- y
                m <<- NULL

}
        ##Get matrix
        get <- function() {
                ##Return the matrix
                x
}
        ##Set the inverse of the matrix
       setInverse <- function(inverse) {
       i <<- inverse
}
       ## Get the inverse of the matrix
       getInverse <- function() {
       ## Return the inverse 
       m
}
       ## Return the list 
       list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getInverse()
        ## check if this inverse of the matrix has been calculated
        if( !is.null(m) ) {
          message("getting cached data")
          return(m)
        }
        ## Get the matrix 
        data <- x$get()
        ## If the inverse has not been calculated
        ## get the matrix  
        m <- solve(data) %*% data
        ## Set the inverse
        x$setInverse(m)
        ## Return the matrix
        m      
}
}
