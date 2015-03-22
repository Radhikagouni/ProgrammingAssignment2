## For clear understanding of the script refer to README.md
## The assignment says running the code is not part of the grading, but then i have included output of the below code
## along with how to run it anyway, to ease your understanding and grading
## makeCacheMatrix is a function that stores a matrix and cached value of the inverse matrix.

## makeCacheMatrix function contains set, get, setmatrix and getmatrix functions
makeCacheMatrix <- function(x = matrix()) {
                
        # holds the cached value or NULL if nothing is cached
        # initially nothing is cached so set it to NULL
        m<-NULL
        
        # set and store the matrix
        set<-function(y){
                x<<-y
                
                # since the matrix is assigned a new value, flush the cache
                m<<-NULL
        }
        
        # returns the stored matrix
        get<-function() x
        
        # cache the given argument
        setmatrix<-function(solve) m<<- solve
        
        # get the cached value
        getmatrix<-function() m
        
        # each named element of the below returned list is a function
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}

# The following function calculates the inverse of a "special" matrix created with makeCacheMatrix
cacheSolve <- function(x=matrix(), ...) {
        # get the cached value
        m<-x$getmatrix()
        
        # if a cached value exists then return it
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        
        # else get the matrix, caclulate the inverse and store it in the cache
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        
        #return the inverse
        m
}
