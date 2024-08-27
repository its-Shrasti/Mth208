## paste your function below 
## make sure to paste ONLY your function
## and no other line of code!
# img = imager image
# bright = positive or negative number indicating "m"
change_brightness <- function(img, bright = .2)
{
  dims <- dim(img)
  mat <- as.array(img[,,1,])
  new_img <- array(data=0,dim=c(dims[1],dims[2],dims[4]))
  for(i in 1:dims[1]){
    for(j in (1:dims[2])){
      new_img[i,j,] <- mat[i,j,] + c(bright,bright,bright)
      if (new_img[i,j,]<c(0,0,0)){
        new_img[i,j,]=c(0,0,0)
      }
      if (new_img[i,j,]>c(1,1,1)){
        new_img[i,j,]=c(1,1,1)
      }
    }
  }
  changed_img <- as.cimg(new_img) # make sure to return imager image object
  return(changed_img)
}
library(imager)
pic <- load.image("campus.jpeg") # any random pic chosen by me
change_brightness(pic, bright = .4)
mat <- as.array(img[,,1,])
mat()

