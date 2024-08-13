### Paste all your code here and save 
#Question 1
tennis <- function(p)
{
  s <- 0
  m <- 0
  x <- 0
  while(TRUE )
  {
    pt <- sample(x=c(0,1),size=1,prob=c(p,1-p))
    if (pt==0){
      s<- s+1
    }
    else{
      m <- m+1
    }
    x <- x+1
    if ((s>4 |m>4) & abs(s-m)>2){
      break
    }
  }
  
  return(x)
}
tennis(0.5)

#Question 2
games <- numeric(length=1000)
for(i in 1:1000)
{
  games[i] <- tennis(0.6)
}
ans <- mean(games)

