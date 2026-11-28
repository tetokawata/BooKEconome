
本書で使用するtidyverse以外のパッケージの一覧表です。

````r
## 本文用

pak::pak("gtsummary")
pak::pak("estimatr")
pak::pak("hdm")
pak::pak("rsample")
pak::pak("cobalt")

## 補論用

pak::pak("car")
pak::pak("corrr")
pak::pak("fixest")
pak::pak("sensemakr")
````

`pak::pak` でのインストールがうまくいかない場合、以下を試してみてください。

````r
## 本文用

remotes::install_github("gtsummary")
remotes::install_github("estimatr")
remotes::install_github("hdm")
remotes::install_github("rsample")
remotes::install_github("cobalt")

## 補論用

remotes::install_github("car")
remotes::install_github("corrr")
remotes::install_github("fixest")
remotes::install_github("sensemakr")
````
