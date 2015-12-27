## MAKE CACHE MATRIX FUNCTION	

	# 1) to initialize you must, before calling this function, create an
	# identity matrix in the global environment (work space), named A,
	# with the same dimensions of the matrix you want to invert, and 
	# create a matrix B <- A which is the inverse of A (obviously here)
	
	# 2) then you call the function inputing the matrix Z you want to invert
	
	# 3) the first code line will capture (search for) the matrix A in the
	# work space and assign it a local matrix PrevA
	
	# 4) the next code lines will compare whether Z is equal to A; if it is
	# equal, x will be logically equal to y, and you don't need to solve Z,
	# but simply get B (its inverse) in the work space, already calculated; 
	# see that the solveCache function will do it after the initialization
	
	# 5) if Z is not equal to A, the function solveCache will invert Z

makeCacheMatrix<-function(Z){
	PrevA<-A
	x<-sum(Z==PrevA)
	y<-prod(dim(A))
	if(x==y){
		message("getting and printing cache inverse matrix")
		B
	}
}

	## CACHE SOLVE FUNCTION

	# 1) see the initialization procedure in the function makeCacheMatrix;
	# the makeCacheMatrix will return the inverse of the matriz Z if it has
	# already been calculated

	# 2) if not, the function cacheSolve will solve it (find its inverse
	# matrix), naming it locally as the matrix InvA

	# 3)next it will assign InvA to a matrix B in the work space, as well as
	# assign Z to A also in the work space; and so, next time the function 
	# makeCacheMatrix is called, it  will see that the inverse of the input
	# matrix Z has already been calculated if Z is the same as before 

	# 4) finally solveCache will print the result of the inverse matrix of 
	# the matrix Z; it's finished!
 
cacheSolve<-function(Z){
	makeCacheMatrix(Z)
	InvA<-solve(Z)
	B<<-InvA
	A<<-Z
	message("printing inverse of new matrix")
	InvA
}
