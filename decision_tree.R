
# Import the training set: train
# Your working directory might vary
getwd()
setwd("E:/Works/Data Science/Titanic_Practice")
train <- read.csv("train.csv")

install.packages('rattle')
install.packages('rpart.plot')
install.packages('RColorBrewer')

library(rpart)
library(rattle)
library(rpart.plot)
library(RColorBrewer)

mytree1 <- rpart(Survived ~ Sex, data=train, method="class")
fancyRpartPlot(mytree1)

round(prop.table(table(train$Survived)),2)

round(prop.table(table(train$Sex, train$Survived),margin = 1),2)

mytree2 <- rpart(Survived ~ Pclass + Age, data=train, method="class")
fancyRpartPlot(mytree2)
