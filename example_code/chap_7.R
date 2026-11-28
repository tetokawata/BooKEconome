set.seed(1)

library(tidyverse)

data("apartment", package = "data4kawata")

split <- rsample::initial_split(apartment, prop = 0.8)

train <- rsample::training(split)

test <- rsample::testing(split)

model_short <- estimatr::lm_robust(
  price ~ tenure,
  train
) # 本文ではlmを用いていますが, estimatr::lm_robustを用いても問題ありません

model <- estimatr::lm_robust(
  price ~ tenure * number * reform + I(tenure^2) + I(number^2),
  train
)

test$model_short <- predict(model_short, test)

test$model <- predict(model, test)

head(test)

mean((test$price - test$model_short)^2)

mean((test$price - test$model)^2)
