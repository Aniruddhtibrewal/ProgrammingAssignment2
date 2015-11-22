makecachematrix <- function (X = matrix()) ## function to set & get value of X  and set & get value of inverse##

{
    matrixinverse <- NULL   ## Initialize matrixinverse to Null##
    
    set <- function (y = matrix())  ## set X to user defined value in parent enviornment ##
      {  
          X <<- y
          matirxinverse<<- NULL
      }
  
    get <- function () X
    
    setinverse <- function(inverse)  ## set inverse to calculated inverse value in parent enviornment##
      {
          matrixinverse <<-inverse
          return(matrixinverse)
      }
      
    getinverse <- function() matirxinverse
    
    list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## check if the inverse exist and return the inverse value else calculate inverse and return##

cacheinverse <- function(X, ...)
  {
      calculatedmatrixinverse <- X$getinverse() ##Assign the current inverse matrix to a variable##
  
      if(!is.null(calculatedmatrixinverse)) ##check if the inverse matrix already exists and return if exists##
        {
            message("getting inverse from cache")
            return(calculatedmatrixinverse)
        }
  
      matrix <- X$get() ## else get the value of the matrix##
      calculatedmatrixinverse <- solve(matrix) ## calculate inverse matrix##
      message("value of inverse is ")
      X$setinverse(calculatedmatrixinverse) ##Set and return inverse##
  }

