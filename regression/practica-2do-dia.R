getwd()
setwd('/home/gibran/development/R/regression')
fuelconsdata <- read.csv('FuelConsumption.csv')
fuelconsdata
str(fuelconsdata)

data1 <- fuelconsdata[-1]
head(data1)
model1 <- 'GPM~.'
model2 <- 'GPM~WT+DIS+NC+HP+ACC+ET'
model3 <- 'GPM~NC+HP'
model4 <- 'GPM~HP+DIS+WT'
model3 <- 'GPM~WT+HP'
lm1 <- lm(model1, data=data1)
lm2 <- lm(model2, data=data1)
lm3 <- lm(model3, data=data1)
lm4 <- lm(model4, data=data1)
lm1
lm2
str(lm1)
class(lm1)
summary(lm1)
summary(lm3)
summary(lm4)
#ACC vs HP
plot(GPM~ACC, data=data1)
plot(GPM~HP, data=data1)
plot(GPM~NC, data=data1)
plot(GPM~ET, data=data1)
plot(GPM~WT, data=data1)
plot(GPM~DIS, data=data1)

cor(data1)


year <- rep(2008:2010, each=4)
quarter <- rep(1:4, 3)
cpi <- c(162.2, 164.6, 166.5, 166.0, 166.2, 167.0, 168.6, 169.5, 171.0, 172.1, 173.3, 174.0 )
length(cpi)
mean(cpi)
year 
quarter

plot(cpi)
plot(cpi~year)
plot(cpi~quarter)

plot(cpi, xaxt='n', ylab='CPI', xlab='')
axis(1, label=paste(year, quarter, sep='Q'),at=1:12,las=3)
cor(cpi,year)
cor(cpi, quarter)

lm01 <- lm(cpi~year+quarter)
summary(lm01)
lm02 <- lm(cpi~year)
summary(lm02)
lm03 <- lm(cpi~quarter)
summary(lm03)

modcpi <- lm01$coefficients[2]*year + lm01$coefficients[3]*quarter + lm01$coefficients[1]
modcpi
cpi - modcpi


install.packages('scatterplot3d')
library(scatterplot3d)
graph2 <- scatterplot3d(year, quarter, cpi, highlight.3d = T, type = "h", xlab = "year", ylab = "quarter", zlab = "cpi")
graph2$plane3d(lm01)

data2011 <- data.frame(year=2011, quarter=1:4)
data2011 
cpi2011 = predict(lm01, newdata = data2011)
cpi2011

style <- c(rep(1,12),rep(2,4))
style

plot(c(cpi, cpi2011), xaxt='n', ylab='CPI', xlab='', col=style, pch=style)
axis(1, label=c(paste(year, quarter, sep='Q'),paste(data2011$year, data2011$quarter, sep='Q')), at=1:16,las=3)
