wine <- read.csv("wine.csv", stringsAsFactors = TRUE)
wine
summary(wine)
library(stats)
hist(wine$Price)
wine_model <- lm(Price ~ Year + WinterRain + AGST + HarvestRain + Age, data = wine)
wine_model
summary(wine_model)
cor(wine[c("Year", "Price", "WinterRain", "Age", "AGST", "FrancePop")])
