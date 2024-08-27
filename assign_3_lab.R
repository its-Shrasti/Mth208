MatNorm <- function(A, type)
{
  value <- 0
  n <- dim(A)[1]
  m <- dim(A)[2]
  if(type == "frob")
  {
    for(i in 1:n){
      for(j in 1:m){
        A[i,j] <- A[i,j]*A[i,j]
      }
    }
    value <- sum(A)
  }
  
  else(if(type == "max")
    
  {
    maxi=0
    for(i in 1:n){
      for(j in 1:m){
        if(maxi < abs(A[i,j])){
          maxi <- abs(A[i,j])
        }
      }
    }
    value <- maxi
  }else{
    stop("Invalid norm type")
  })
  return (value)
}
A=as.matrix(c(0,1,1,2,3,4,6,7,8),nrow=3,ncol=3)
MatNorm(A,type="frob")
MatNorm(A,type="max")
MatNorm(A,type="frob")

