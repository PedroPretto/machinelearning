insurance <- read.csv("insurance.csv", stringsAsFactors = TRUE)
str(insurance)
summary(insurance$expenses)
hist(insurance$expenses)
ins_model <- lm(expenses ~age + children + bmi + sex + smoker + region, data = insurance)
ins_model
