#> lib:stats/common/
# 
# @within function lib:stats/*

## 装備ごとに数値を取得
  function lib:stats/common/get.amount.loop
## 元の値に*100%を加算
  execute if score #Amount.Stored.1 Temp = #Amount.Stored.1 Temp run function lib:stats/common/operation/1
## 元の値に*100%を乗算
  execute if score #Amount.Stored.2 Temp = #Amount.Stored.2 Temp run function lib:stats/common/operation/2
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Amount.Stored
  scoreboard players reset #Amount.Stored.1
  scoreboard players reset #Amount.Stored.2
## 一時使用Storageを削除
  data remove storage lib:temp Stat
