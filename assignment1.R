

setwd("C:/Users/Ted/Desktop/19/pracitce/datasets/assignment-1-Reet1992-master/Assi1_datasets")

#Assignment 1 - Unemplyment Dataset

--------------------------#####unemployment#######--------------------------

unemployment_2 <- read.csv("unemployment1948_2010.csv", header = TRUE)
library(ggplot2)
g <- ggplot(unemployment_2,aes(x = Year, fill = factor(Value))) +
  geom_bar(width = 0.5) + 
  xlab("Year") + 
  ylab("Total Count") + 
  labs(fill = "Year")

gganimate(g)

###Image-Unemploymentpic.jpeg--##

plot(Value ~ Year, data = unemployment_2, main="Scatterplot")
unemployment$Year <- as.integer(unemployment$Year)
hist(unemployment_2$Value)

##Image-scatteremploy--##

sunflowerplot(unemployment_2$Year,unemployment_2$Value)

##Image-sunfloweremployment-----##





-----------------#########Birthrate###########--------------------




birthrate_3 <- read.csv("birth_rate.csv", header = TRUE)
library(ggplot2)
ggplot(birthrate_3,aes(x = Country, fill = factor(X2008))) +
  geom_bar(width = 0.5) + 
  xlab("Country") + 
  ylab("Total Count") + 
  labs(fill = "X2008")


plot(X2008 ~ Country, data = birthrate_3, main="Scatterplot")

##Image- Birthratescatter----##

hist(birthrate_3$X2008)

# density Plot for 1960 and 2008# This will give the resultant density 
#distribution

plot(density(birthrate_3$X1960,birthrate_3$X2008))
c <- birthrate_3$X1960
f <- birthrate_3$X2008
g <- rbind(c,f)
plot(density(g))



##Image- hisbirthrate-----##



-------------###########crimerate###########--------------------------



crimerate <- read.csv("crimeRatesByState2005.csv", header = TRUE)

str(crimerate)

#1.scatterplot for crimerate

plot(crimerate$burglary,crimerate$murder)

#Image-Crimerate--



#2.Normal working with murder and burglary vairables

df <- data.frame(crimerate$murder,crimerate$burglary)
df2 <- data.frame(crimerate$murder,crimerate$burglary,crimerate$state)

library(ggplot2)

df$crimerate.murder <- as.factor(df$crimerate.murder)
df$crimerate.burglary <- as.factor(df$crimerate.burglary)

ggplot(df,aes(x = crimerate.murder, fill = factor(crimerate.burglary))) +
  geom_bar(width = 0.5) + 
  xlab("murder") + 
  ylab("Total Count") + 
  labs(fill = "burglary")

 #---Image-crimerateplot----



#3.Applying facet for  state and conversion of 2 variables(murder and burglary) into factor 

df2$crimerate.murder <- as.factor(df2$crimerate.murder)
df2$crimerate.burglary <- as.factor(df2$crimerate.burglary)

ggplot(df2,aes(x = crimerate.murder, fill = factor(crimerate.burglary))) +
  geom_bar(width = 1) + 
  xlab("Murder") + 
  ylab("Burglary") + 
  facet_wrap(~crimerate.state)
  labs(fill = "Burglary")
  
  ##Image- CrimerateupdateFacetstate-












