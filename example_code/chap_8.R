set.seed(1)

library(tidyverse)

data("apartment", package = "data4kawata")

model <- estimatr::lm_robust(
  price ~ reform,
  apartment
)

confint(model)

model <- estimatr::lm_robust(
  price ~ reform +
    tenure * number +
    I(tenure^2) +
    I(number^2),
  apartment
)

confint(model)

table <- cobalt::bal.tab(
  reform ~ .,
  apartment,
  contious = "raw"
)

table

## 補論: LASSO

Y <- apartment$price

D <- apartment$reform

X <- model.matrix(
  ~ tenure:number + poly(tenure, 4) + poly(number, 2),
  apartment
)

X <- X[, -1]

model <- hdm::rlassoEffect(
  y = Y,
  d = D,
  x = X,
  method = "double selection"
)

summary(model)


## 補論: Hetero

model <- estimatr::lm_lin(
  price ~ reform,
  ~ tenure + I(tenure^2),
  apartment
)

confint(model)
