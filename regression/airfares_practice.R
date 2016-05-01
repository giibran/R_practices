getwd()
setwd('/home/gibran/development/R/regression')
fuelconstdata <- read.csv('Airfares.csv', stringsAsFactors=F)

fuelconstdata$S_INCOME
fuelconstdata$S_INCOME <- sub('\\$','',fuelconstdata$S_INCOME)
fuelconstdata$S_INCOME <- sub(',','',fuelconstdata$S_INCOME)

fuelconstdata$S_INCOME <- as.numeric(fuelconstdata$S_INCOME)


moneyToNum <- function(val) {
  subComma <- sub(',', '', val)
  subMoney <- sub('\\$', '', subComma)
  return(as.numeric(subMoney))
}

fuelconstdata$S_INCOME <- moneyToNum(fuelconstdata$S_INCOME)
fuelconstdata$E_INCOME <- moneyToNum(fuelconstdata$E_INCOME)
fuelconstdata$FARE <- moneyToNum(fuelconstdata$FARE)

lm3 <- lm(FARE~., data=fuelconstdata)
names(fuelconstdata)
lm3b <- lm(FARE~VACATION_No + HI + DISTANCE  + SW_No, data= fuelconstdata)
summary(lm3b)

dfpre <- data.frame(VACATION_No=1, HI=4000, DISTANCE=1000, SW_No=1)
myfare <- predict(lm3b, newdata = dfpre)
myfare


