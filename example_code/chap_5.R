library(tidyverse)

data("apartment", package = "data4kawata")

model <- estimatr::lm_robust(
  price ~ 1,
  apartment
)

coef(model)

confint(model)

model <- estimatr::lm_robust(
  price ~ tenure + number,
  apartment
)

coef(model)

confint(model)


model <- estimatr::lm_robust(
  price ~ tenure + number,
  apartment,
  alpha = 0.005
)

coef(model)

confint(model)


model <- glm(
  reform ~ number,
  family = "binomial",
  apartment
)

result <- car::Boot(model, R = 1000)

confint(result, type = "basic")
