## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##makeCachematrix is accepting a matrix and 
##creating a list of functions associated with it
## get to return the matrix
## getinverse() to return the value of variable inverse
## setinverse() to set the value of varriable inverse
## inverse is a variable which will store the inverse of the said matrix.



makeCacheMatrix <- function(x = matrix()) {
  
  inverse <- NULL
  set <- function(y) {
    x <<- y
##using <<- helps to access the parent variables through child function 
    inverse <<- NULL
  }
  get <- function() x
  
##using <<- to use assign value to the parent variable inverse

    setinverse <- function(inver) inverse <<- inver
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}




## Write a short comment describing this function
## FOLLOWING function accepts output of the above as argument. 
##getinverse() function created by me is used to get the inverse, 
##if inverse exists, a matrix is returned, else 
##null is returned, in which case, this function 
## calculates inverse using solve and sets "inverse" variable of the argument
## using setinverse function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverse<-x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  inverse
  
}
