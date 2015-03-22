## Read and source the R Script
## create a *square* matrix, during the call of makeCacheMatrix() or an alternative method to pass arguments is given too
a <- makeCacheMatrix( matrix(c(1,2,4,8,10,12,14,16,20), nrow = 3, ncol = 3) );

summary(a)
##>           Length Class  Mode    
##> set       1      -none- function
##> get       1      -none- function
##> setmatrix 1      -none- function
##> getmatrix 1      -none- function

a$get();
##>      [,1] [,2] [,3]
##> [1,]    1    8   14
##> [2,]    2   10   16
##> [3,]    4   12   20

cacheSolve(a)
##>            [,1]       [,2]  [,3]
##> [1,] -0.3333333 -0.3333333  0.50
##> [2,] -1.0000000  1.5000000 -0.50
##> [3,]  0.6666667 -0.8333333  0.25

## second time we run the function will get the cached data
cacheSolve(a)
##> getting cached data
##>           [,1]       [,2]  [,3]
##> [1,] -0.3333333 -0.3333333  0.50
##> [2,] -1.0000000  1.5000000 -0.50
##> [3,]  0.6666667 -0.8333333  0.25

# Alternatively the Matrix can be created after calling makeCacheMatrix without arguments
## call makeCacheMatrix without arguments
a <- makeCacheMatrix();
summary(a);
##>              Length Class  Mode    
##> setMatrix    1      -none- function
##> getMatrix    1      -none- function
##> cacheInverse 1      -none- function
##> getInverse   1      -none- function

## create a square matrix as `solve` only handles square matrices
a$set( matrix(c(1,2,4,8,10,12,14,16,20), nrow = 3, ncol = 3) );
a$get();
##>      [,1] [,2] [,3]
##> [1,]    1    8   14
##> [2,]    2   10   16
##> [3,]    4   12   20

cacheSolve(a)
##>            [,1]       [,2]  [,3]
##> [1,] -0.3333333 -0.3333333  0.50
##> [2,] -1.0000000  1.5000000 -0.50
##> [3,]  0.6666667 -0.8333333  0.25

## second time we run the function will get the cached data
cacheSolve(a)
##> getting cached data
##>            [,1]       [,2]  [,3]
##> [1,] -0.3333333 -0.3333333  0.50
##> [2,] -1.0000000  1.5000000 -0.50
##> [3,]  0.6666667 -0.8333333  0.25
