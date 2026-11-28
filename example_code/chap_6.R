library(tidyverse)

data("apartment", package = "data4kawata")

model <- estimatr::lm_robust(
  price ~ tenure * number + I(tenure^2) + I(number^2),
  apartment
)

coef(model)

model <- hdm::rlasso(
  price ~ poly(tenure, 6) + poly(number, 2),
  apartment,
  post = FALSE
)

coef(model)
