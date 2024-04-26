#> mob:kill
# 消す
# @within function mob:tick

## デスポーンするように
  data modify entity @s PersistenceRequired set value 0b
## 移動
  tp @s ~ -3000 ~
## 
  kill @s
