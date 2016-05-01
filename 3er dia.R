strvar <- 'hola'
flvar <- 12
intvar <- as.integer(15)
comvar <- complex(real=1, imaginary = 1)
boolvar <- T
listvar <- list(strvar, flvar, intvar, comvar, boolvar)
listvar$vector1 <- 1:1000
vec2 <- c(1,2,3)
names(listvar)
mtxvar <- matrix(1:12, nrow=3, ncol=4)
mtx2 <- cbind(vec2, vec2*2, vec2*3)

df1 <- data.frame(mtx2)
colnames(df1) <- c('c1','c2','c3')
rownames(df1) <- c('r1','r2','r3')
str(df1)
str(listvar)
listvar$colections <- list(mtxvar)
listvar

multiply <- function(){
  return (mean(as.integer(df1$c3)) * intvar) + 15
}




dt1 <- c(5,11,10,7,3,8,5)

plot(table(dt1))
dt2 <- c(4,16,13,101,14,7,9)
length(dt1)
length(dt2)

dt3 <- c(dt1,dt2)

dn = rnorm(1:100,mean=0,sd=1)

x <- seq(-4, 4, length=100)
hx <- dnorm(x)

plot(x,hx, type = 'l', xlab = 'x', ylab = 'density', main = 'normal distribution')
dt1 = vc
mymedian <- function(vc){
  ordered = sort(vc)
  if(length(vc) %% 2 == 0)
    return(mean(c(ordered[length(vc) %/% 2], ordered[length(vc) %/% 2 + 1] )))
  else
    return(ordered[length(vc) %/% 2 + 1])
}

mymod <- function(vector){
  ocurrences <- table(vector)
  max <- -1000
  for(i in 1:length(ocurrences)){
    if(ocurrences[i] > max){
      max <- ocurrences[i]
      maxindex <- i 
    }
  }
  return(as.integer(names(ocurrences[maxindex])))
}

quart1 <- sort(dt3)


calif  <- c(6,5,7,5,6,8,9,4,6,5,8,10,8,6,7,4,6,7,8,5,6,7,8,4)

quart2 <- sort(calif)

indx <- c(6,12,18)
quart2[indx]

mysd <- function(vector){
  mv <- mean(vector)
  diffvec <- vector - mv
  diffvec2 <- diffvec^2
  sumdv2 <- sum(diffvec2)
  ds2 <- sumdv2/(length(vector)-1)
  return(sqrt(ds2))
}

plot(table(calif))
sum(dt1)/length(dt1)
sum(dt2)/length(dt2)


x <- c(1,2,3,4,5)
y <- c(1,2,1.3,3.75,2.25)
y <- c(2,4,6,8,9.8)

lm1 <- lm(y~x)
summary(lm1)


mx <- mean(x)
my <- mean(y)
sx <- sd(x)
sy <- sd(y)
rxy <- cor(x,y)

slope <- rxy * (sy/sx)
intercept <- my - (slope * mx)
