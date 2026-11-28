# 本文については, chap_8の方法で実装できるので省略

# 補論: 感度分析

library(tidyverse)

data("apartment", package = "data4kawata")

model_short <- fixest::feols(
  price ~ reform + number,
  apartment,
  vcov = "hetero"
)


model <- fixest::feols(
  price ~ reform + number + tenure,
  apartment,
  vcov = "hetero"
)

result <- sensemakr::sensemakr(
  model,
  treatment = "reform",
  benchmark_covariates = list(
    tenure = c("tenure")
  ),
  kd = c(1 / 4, 1 / 2, 3 / 4, 1)
)

result$bounds

result$bounds[, c(1, 8, 9)] # 教科書と同じ結果を表示したい場合
