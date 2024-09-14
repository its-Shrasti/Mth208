## paste all your code here for Problem 2 of the exam
library(imager)

boat <- load.image("boat.jpeg")

to_hsv <- function(img=boat){
  mat <- as.array(img[,,1,])
  dims <- dim(mat)
  v <- as.matrix(0,ncol=dims[1],nrow=dims[2]) #defining empty matrices for s,v,h
  s <- as.matrix(0,ncol=dims[1],nrow=dims[2])
  h <- as.matrix(0,ncol=dims[1],nrow=dims[2])
  
  for(i in 1:dims[1]){
    for(j in 1:dims[2]){
      r <- mat[i,j,][1] #taking out every color from a pixel
      g <- mat[i,j,][2]
      b <- mat[i,j,][3]
      v[i,j] <- max(mat[i,j,])
      
      if (v[i,j]==0){ # for v=0 case
        s[i,j] <- 0
        h[i,j] <- 0
      }
      else{
        s[i,j] <- (v[i,j] - min(mat[i,j, ]))/v[i,j]
        if (v[i,j]==r){
          h[i,j]=60 *(((g-b)/(v[i,j]-min(r,g,b)))%%6)
        }
        else if (v[i,j]==g){
          h[i,j]=60 *(((b-r)/(v[i,j]-min(r,g,b)))+2)
        }
        else if (v[i,j]==h){
          h[i,j]=60 *(((r-g)/(v[i,j]-min(r,g,b)))+4)
        }
        ifelse(h[i,j]<0,h[i,j]+360,h[i,j])
        ifelse(h[i,j]>=360,h[i,j]-360,h[i,j])
      }
    }
  }
  return (h,s,v)
}

hs_convert <- function(img){
  par(mfrow = c(1,3))
  c(h,s,v)<-to_hsv(img)
  hist(h,xlab="Hue")
  hist(s,xlab="Value")
  hist(v,xlab="Saturation")
}
