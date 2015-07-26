## This is the function to inverse and cache a matrix
## 

## initial set and get matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){ 
      x <<-y
      m <<- NULL
    }
    get <- function() x
    setmatrix <- function (solve) m <<- solve
    getmatrix <- function () m
    list (set=set, get=get,
	    setmatrix=setmatrix,
  	    getmatrix=getmatrix)
}

## Inverse and cache the matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getmatrix()
    if (!is.null(m){
      message("getting cached data")
      return (m)
    }
    matrix <- x$get()
    m <- solved(matrix, ...)
    x$setmatrix(m)
    m
}
