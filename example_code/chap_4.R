library(tidyverse)

data("apartment", package = "data4kawata")

model <- estimatr::lm_robust(
  price ~ number + tenure,
  apartment
)

coef(model)

ggplot(
  apartment,
  aes(
    x = number,
    y = price
  )
) +
  geom_bin2d(
    alpha = 0.2
  ) +
  stat_summary(
    geom = "point"
  ) +
  geom_smooth(
    method = "lm",
    se = FALSE
  )

model <- glm(
  reform ~ number,
  apartment,
  family = "binomial"
)

coef(model)


table <- corrr::correlate(apartment)

table

corrr::rplot(table)
