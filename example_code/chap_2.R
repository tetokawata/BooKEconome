library(tidyverse)

data("apartment", package = "data4kawata")

head(apartment, 5)

gtsummary::tbl_summary(apartment)

glimpse(apartment)

mean(apartment$price)

lm(price ~ number + tenure, apartment)
