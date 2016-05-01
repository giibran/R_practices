tiposdatsr = list(typeint=as.integer(1), typefloat = 1, typechar = 'char', typeBoolean=T)
vec1 = 1:100
vec2 = seq(1,5,2)
vec3 = c(2,4,6)
vec4 = vec1 + vec2
vec5 = vec2 + vec3
vec6 = vec5 * vec2[2]

mtx1 = matrix(vec1, nrow=10, ncol=10)
mtx1
mtx2 = mtx1 + mtx1
mtx3 = mtx2 +1

individuo11 = 102:111

mtx4 = rbind(mtx3, individuo11)

mtx5 = mtx4[,1:4]
dim(mtx5)

colnames(mtx5) <- c('peso','estatura','talla','edad')
head(mtx5,3)
rownames(mtx5) <- c('subject1')

generatenames <- function(qty){
  namesaux = NULL
  for (i in 1:qty){
    namesaux = c(namesaux,paste('subject',i, sep=""))
  }
  return(namesaux)
}

colores <- c('azul', 'verde', 'negro')
allcolores <- rep(colores, 100)
allcolores
sample(allcolores,11)

colfavori <- sample(allcolores, nrow(mtx5))
colfavori

mtx6 <- cbind(mtx5,colfavori)
colnames(mtx6) <- c(colnames(mtx6)[-5],'colorfav')


df1 <- data.frame(mtx6, stringsAsFactors=F)

str(df1)
summary(df1)

df1[,1] <- as.numeric(df1[,1])
df1[,2] <- as.numeric(df1[,2])
df1[,3] <- as.numeric(df1[,3])
df1[,4] <- as.numeric(df1[,4])
str(df1)

