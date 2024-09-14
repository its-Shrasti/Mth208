## paste all your code here for Problem 1 of the exam
smallWorld <- function()
{
  n.population <- 1e5
  n.friends <- 150
  n.encounters <- 500
  days<-0
  exp<-numeric(length=500)
  p <- 150/1e5
  while(sum(exp)==0){
    exp <- replicate(500,sample(0:1,size=1,prob=c(1-p,p)))
    days <- days+1
  }
  
  return(days)
}
smallWorld()
#mean(replicate(400,smallWorld()))
