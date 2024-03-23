#> player:stats/update
# 装備の効果を反映
# @within function player:stats/*

## 
  function lib:stats/hp.max
  function lib:stats/mp.max
  function lib:stats/speed
## 一時使用Storageを削除
  data remove storage main:temp Updated
