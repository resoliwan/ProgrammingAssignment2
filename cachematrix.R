#mack martix obj

makeCacheMatrix <- function(x = matrix()) {
        #init thisMatrix
        thisMatrix <- x
        thisInverseMatrix <- NULL

        setMartix <- function(martix){
                thisMatrix <<- martix;
        }

        getMatrix <- function(){
                thisMatrix
        }

        setInverseMatrix <- function(inverseMatrix){
                thisInverseMatrix <<- inverseMatrix
        }

        getInverseMatrix <- function(){
                thisInverseMatrix
        }

        list(
                setMartix = setMartix,
                getMatrix = getMatrix,
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

         matrix <- m$getMatrix();
         inverseMatrix <- solve(matrix, ...)
         m$setInverseMatrix(inverseMatrix)
         inverseMatrix

}
