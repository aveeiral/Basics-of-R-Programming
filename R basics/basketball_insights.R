

#creating a function

myplot <- function(data, rows=1:10){
  Data <- data[rows, ,drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  ?legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
  
}

#creating a bar plot
mybarplot <- function(data, rows=1:10){
  Data <- data[rows, ,drop=F]
  barplot(t(Data), beside = T, col = 1:10, space = c(0, 5))
  legend("topright",x=1, y=1, bty="n", legend = Players[rows], fill = 1:10, ncol = 2,cex = 0.75)
}




#Salary
mybarplot(Salary)
mybarplot(Salary)
myplot(Salary / Games)
mybarplot(Salary / FieldGoals)

#In game metrices
myplot(MinutesPlayed)
myplot(Points)


#In game normalized matrix
myplot(FieldGoals / Games)
myplot(FieldGoals / FieldGoalAttempts)
myplot(FieldGoalAttempts / Games)
myplot(Points / Games)
mybarplot(Points / Games)
#Intresting insights
myplot(MinutesPlayed / Games)
myplot(Games)


#Time calc
myplot(FieldGoals / MinutesPlayed)

#Player descrip
myplot(Points /  FieldGoals) 



