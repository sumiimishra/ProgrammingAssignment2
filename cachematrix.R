## Put comments here that give an overall description of what your
## functions do

## this function is used to set and get the matrix, aswell as set the inverse and get the inverse of the matrix.
## it is also used to check wether the original matrix is changed or not. 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInv <- function(inv) m <<- inv
  getInv <- function() m
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
  
}


## this function is used to check wether the inverse the inverse of the matrix is calculated or not.
## if calculated , it returns the inverse of mastrix from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInv(m)
  m
}
