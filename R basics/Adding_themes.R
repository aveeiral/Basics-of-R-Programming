# Adding a theme to the graph
library(ggplot2)

h <- ggplot(data=myfilm, aes(x=Budget))
hnew <- h + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")

# adding a label


hnew + 
  xlab("Money in movie making") +# adding a x label
  ylab("Number of movies") +# adding a y label
  ggtitle("Movie Money distribution") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=15),
        axis.title.y = element_text(colour="DarkGreen", size=15),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title = element_text(size=15),
        legend.text = element_text(size=15),
        legend.position = c(1,1),
        legend.justification = c(1,1),#
        
        plot.title = element_text(colour="DarkBlue", size=20)#configuring the title to the plot
        )
        
  

