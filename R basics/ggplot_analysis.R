

myfilm <- read.csv(file.choose())
head(myfilm)
colnames(myfilm) <- c("Flm", "Genre", "R_Rating","A_Rating", "Budget", "Year")
head(myfilm)

str(myfilm)

#converting year as a factor for operations further

myfilm$Year <- factor(myfilm$Year)
summary(myfilm)
str(myfilm)
 
#adding asthetics and geometry to plots

library(ggplot2)

ggplot(data=myfilm, aes(x=R_Rating, y=A_Rating, colour=Genre, size=Budget)) +
  geom_point()


p <- ggplot(data=myfilm, aes(x=R_Rating, y=A_Rating, colour=Genre, size=Budget)) +
  geom_point()

p + geom_point()

#plotting the line

p + geom_line()

p + geom_line() + geom_point()

#adding layers to the data
q <- p

q + geom_point()
summary(myfilm)

#overridding aesthetics

q + geom_point(aes(size=R_Rating))

#over ride color
q + geom_point(aes(colour=Budget))

q + geom_point(aes(x=Budget)) + xlab("BUdget$")


#mapping vs setting
r <- ggplot(data=myfilm, aes(x=R_Rating, y=A_Rating))
r + geom_point()

r + geom_point(aes(colour=Genre))# mapping
r + geom_point(colour="DarkGreen")# setting

r + geom_point(aes(size=Budget))#Mapping
r + geom_point(size=2)# setting

# if you want to set something dont use aesthetics 
#and if you want to map something us eaesthetics








