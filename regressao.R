insurance <- read.csv("insurance.csv", stringsAsFactors = TRUE)
str(insurance)
summary(insurance$expenses)
hist(insurance$expenses)
ins_model <- lm(expenses ~age + children + bmi + sex + smoker + region, data = insurance)
ins_model
ins_model2 <-lm(expenses ~age + children + bmi + smoker + region, data = insurance)
ins_model2
ins_model3 <- lm(expenses ~age^2 + age + children + bmi + smoker + region, data = insurance)
ins_model3
