## Put comments here that give an overall description of what your
## functions do

## This function creates a special matrix that caches the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(Inverse) inv <<- Inverse
  getinv <- function() inv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## This function computes teh inverse of a matrix
## If inverse was already calc'd, then it skips the calc

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)){
    message("getting cached inverse")
    return(m)
  }
  data <- x$get()
  x$setinv(m)
  m
}
