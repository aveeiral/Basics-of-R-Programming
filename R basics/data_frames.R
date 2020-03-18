#demographic analysis

stat <- read.csv(file.choose())
stat

getwd()# get the working directory


setwd()# set the working diectory manually








#---------------------------------------#
#exploring data
nrow(stat)# for no.of rows
ncol(stat)# for no.of columns
head(stat)# for the top 6 rows
tail(stat, n=7)# for the last 7 rows

str(stat)# to display the structure of the data frame use help to get extrav info
summary(stat)# gives the summary of the dataset

#-------------Exploring the $ sign
stat$Birth.rate[2]
levels(stat$Income.Group)#$ is used to select all the values of any column

#basic operations on dataframes
stat[5,]

is.data.frame(stat[5,])

#math operations
head(stat)
stat$Birth.rate - stat$Internet.users
 
#adding a column
stat$myans <- stat$Birth.rate - stat$Internet.users
head(stat)

#remove a column
stat$myans <- NULL
head(stat)

#filtering data frames
filter <- stat$Birth.rate > 42

statnew <- stat[filter,]# this will display all the values with birth rate greater than 42
is.data.frame(statnew[, "Country.Name"])

head(statnew)

#introduction to quick plots
library(ggplot2)

qplot(data=stat, x=Birth.rate)
qplot(data=stat, x=Birth.rate, y=Income.Group, size=I(3),colour=I("Blue"))

qplot(data=stat, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(5))

qplot(data=stat, x=stat[Income.Group == "Low Income"], y=Birth.rate, colour=Income.Group, size=I(5))

filter <- is.data.frame(stat$Income.Group = "Low income")






stat[,Income.Group]

find <- (stat$Birth.rate > 40)

stat[find, "Income.Group"]

head(stat)



here <- stat$Income.Group = "Low income"

stat[,"Income.Group" = "High income"]















