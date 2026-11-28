# ２章

1.

````r
data("apartment", package = "data4kawata")

mean(apartment$tenure)
````

2.

````r
data("apartment", package = "data4kawata")

lm(price ~ tenure + reform. apartment)
````
3. 3 (どちらも問題)

- 1 (データの事例数が限られている)は推定問題, 2 (必要な変数が含まれていない)は識別問題, に分類されることが多いです。
