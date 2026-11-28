library(tidyverse)

data("apartment", package = "data4kawata")

colMeans(apartment)

count(
  apartment,
  number,
  reform
)

ggplot(
  apartment,
  aes(
    x = number,
    y = price
  )
) +
  geom_bin2d() +
  theme_bw()

count(
  apartment,
  number
)

ggplot(
  apartment,
  aes(
    x = number
  )
) +
  geom_histogram()

mean(apartment$price)

mean(apartment$reform)

apartment$price_high <- if_else(
  apartment$price > 100,
  1,
  0
)

mean(apartment$price_high)

summary(apartment)

var(apartment$number)

sd(apartment$number)
