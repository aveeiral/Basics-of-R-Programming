#matrix
#it will operate same as vectors with similar data types
my_data <- seq(1, 20, 2)
b <- matrix(my_data, 2, 5, byrow=F)

b

#rbind/cbind functions

r1<- c("I", "am", "happy")
r2<- c("so", "are", "you")
r3<- c(1, 2, 3)

ansr<-rbind(r1, r2, r3)
ansc<-cbind(r1, r2, r3)



