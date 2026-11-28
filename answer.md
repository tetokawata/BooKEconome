# 想定回答

## ２章

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

## ３章

1.

````r
data("apartment", package = "data4kawata")

mean(apartment$tenure)
````

2.

|面|度数|
|:-----:|:----:|
|表|2|
|裏|1|

3.

$$
\frac{1\times (20+50)}{100} + \frac{2\times 30}{100} =1\times 0.7 + 2\times 0.3=1.3
$$
