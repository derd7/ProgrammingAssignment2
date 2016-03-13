## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix stores matrices in memory

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(Y){
	X <<- Y
	inverse <<- NULL
}
## Get the Matrix, set the inverse, and get the inverse of the matrix. 
get <- function() X
setinverse <- function(Inverse) inverse <<- Inverse
getinverse <- function() inverse
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
## Compute and show the inverse of the special matrix returned by "makeCacheMatrix"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
inverse <- X$getinverse()
if(!is.null(inverse)){
	message("matrix is in memory")
	return(inverse)
	}
message("inverse is not in memory so the inverse (if exist) is gonna be computed")
data <- X$get()
inverse <- pseudoinverse(data, ...)
X$setinverse(inverse)
inverse
}
