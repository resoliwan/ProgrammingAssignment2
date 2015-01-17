#mack martix obj

makeCacheMatrix <- function(x = matrix()) {
        thisInverseMatrix <- NULL
        thisMatrix <- NULL
        set <- function(martix){
                thisMatrix <<- martix;
        }

        get <- function(){
                thisMatrix
        }

        setInverseMatrix <- function(inverseMatrix){
                thisInverseMatrix <<- inverseMatrix
        }

        getInverseMatrix <- function(){
                thisInverseMatrix
        }

        list(
                set = set,
                get = get,
                setInverseMatrix = setInverseMatrix,
                getInverseMatrix = getInverseMatrix
        )
}


## cache inverse matrix at matrix class

cacheSolve <- function(m, ...) {
        inverseMatrix <- m$getInverseMatrix();
         if(!is.null(inverseMatrix)){
                message("getting cached data")
                return(inverseMatrix)
         }

         matrix <- m$get();
         inverseMatrix <- solve(matrix, ...)
         m$setInverseMatrix(inverseMatrix)
         inverseMatrix

}
