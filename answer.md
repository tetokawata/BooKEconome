# 想定回答

## ２章

1.

````r
data("apartment", package = "data4kawata")

mean(apartment$number)
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

## 第４章

1.


````r
data("apartment", package = "data4kawata")

estimatr::lm_robust(tenure ~ number, apartment)
````

2.

- 条件付き平均値: 築年数5年の物件内の条件付き分布は
$$
1部屋の割合=\frac{20}{20+30}=0.4
$$

$$
2部屋の割合=\frac{30}{20+30}=0.6
$$

なので

|築年数|平均部屋数|
|:----:|:----:|
|0|1|
|5|$1\time 0.4+2\times 0.6=1.6$|

- 線型モデル: 以下の線型モデルを上記の条件付き平均値に当てはめる。
$$
平均部屋数\simeq \beta_0 + \beta_1\times 築年数
$$
築年数は2種類 (0または5)しかないので、線型モデルは条件付き平均値に完璧に当てはめることができる。よって以下の二つの条件を満たす必要がある

- 築年数 $=0$ の場合, モデルは1を算出する
$$
\beta_0 + \underbrace{\beta_1\times 築年数}_{=0}=1
$$

- 築年数 $=5$ の場合, モデルは1.6を算出する
$$
\underbrace{\beta_0}_{=1} + \beta_1\times \underbrace{築年数}_{=5}=1.6
$$
よって $\beta_1=\frac{1.6-1}{5}=0.12$

3. 3 (どちらも正解)

- OLSが、元のYともYの条件つき平均値、どちらについても最も当てはめるモデルを算出するのは、本書を通じて重要な性質です。
