summary(train$Sex)

prop.table(table(train$Sex,train$Survived))


prop.table(table(train$Sex,train$Survived),1)*100


barplot(table(train$Sex),xlab = "Passenger",ylab = "People",main = " Train Data Passenger" )


test$Survived <- 0
test$Survived[test$sex == 'female'] <- 1

prediction2 <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(prediction2, file = "prediction2.csv", row.names = FALSE)

