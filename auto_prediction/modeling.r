library(nnet)
data('iris')
View(iris)
levels(iris$Species)


multinom_model <- multinom(Species ~ ., data = iris)
# Checking the model
summary(multinom_model)

save(multinom_model, file = "model.rda")
