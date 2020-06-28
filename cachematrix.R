## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    #Asigno cache nulo
    cache <- NULL
    
    # fija matriz
    setMatrix <- function(newValue) {
        x <<- newValue
        # borro cache despues de inicializar
        cache <<- NULL
    }
    
    # obtengo matrix guardada
    getMatrix <- function() {
        x
    }
    
    # fijo inverso en el cache 
    cacheInverse <- function(solve) {
        cache <<- solve
    }
    
    # obtengo inverso
    getInverse <- function() {
        cache
    }
    
    # return a list. Each named element of the list is a function
    list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
    
    
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    # Obtengo valor del cache
    inverse <- y$getInverse()
    # si existe lo retorno
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    # De otra forma lo calculo y lo almaceno
    data <- y$getMatrix()
    inverse <- solve(data)
    y$cacheInverse(inverse)
    
    # Retorno inveso 
    inverse
}
