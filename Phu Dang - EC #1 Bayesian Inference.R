install.packages("e1071")
install.packages("caret")

library(e1071)
library(caret)

# nb <- naiveBayes(Species ~ Petal.Length + Petal.Width, data = iris) 
# preds <- predict(object = nb, newdata = iris) 
# confusionMatrix(data = preds, reference = iris$Species) 

#Q1
nb_1 <- naiveBayes(recur ~ age, data = df)

#Q2
preds_1 <- predict(object = nb_1, newdata = dfTest)

#Q3
confusionMatrix(data = preds_1, reference = dfTest$recur, positive = "no")

#Q7
nb_2 <- naiveBayes(recur ~ ., data = df)

#Q8
preds_2 <- predict(object = nb_2, newdata = dfTest)

#Q9
confusionMatrix(data = preds_2, reference = dfTest$recur, positive = "yes")
