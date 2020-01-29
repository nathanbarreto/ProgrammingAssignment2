## lesson instructions!
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## ---------- My Solution-----------

##This function creates the "special Matrix", I think this can't work with non squared matrices or matrices non-invertibles

makeCacheMatrix <- function(x = matrix()) {
       
        inv<- NULL
        set<- function(y){
                x<<- y
                inv<<- NULL}
        
        get <- function() x
        setinverse <- function(inverse) inv <<-inverse
        getinverse <- function() inv
        list (set = set,
              get = get,
              setinverse = setinverse,
              getinverse = getinverse)
}

## This function gets the "special matrix", and retur its inverse. 
## But if the inverse of the matrix has already been calculed this retrieve the inverse from the cache 
cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)){
                message ("getting cached data")
                return(inv)    }
        
        mat <- x$get()
        inv <- solve(mat,...)
        x$setinverse(inv)
        inv
        }

## As a test, the result obtained for using theses functions are:

makeCacheMatrix(matrix(c(1,3,5,0,1,0,9,7,2),ncol=3,nrow=3)) ->x

cacheSolve(x)
            [,1] [,2]        [,3]
[1,] -0.04651163    0  0.20930233
[2,] -0.67441860    1 -0.46511628
[3,]  0.11627907    0 -0.02325581

x$get()
     [,1] [,2] [,3]
[1,]    1    0    9
[2,]    3    1    7
[3,]    5    0    2

