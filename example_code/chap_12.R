set.seed(100)

library(tidyverse)

data("apartment", package = "data4kawata")

model <- lm(price ~ number + tenure, apartment)

result <- car::Boot(model, R = 1000)

confint(result, type = "basic")

confint(result, type = "perc") # 本書内のbcaを使用してますが、実際には本モデルについては信頼区間が計算できず、percentile bootstrapを代用しています。
