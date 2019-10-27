table(train$Survived) 

prop.table(table(train$Survived))


barplot(table(train$Survived), xlab="Survived", ylab="People", main="Train Data Survival")

test$Survived <- rep(0, 418)


prediction1 <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(prediction1, file = "prediction1.csv", row.names = FALSE)