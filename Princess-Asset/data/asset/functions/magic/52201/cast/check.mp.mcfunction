#> asset:magic/52201/cast/check.mp
# 魔力の確認
# @within function asset:magic/52201/cast/

## 消費魔力 - Int
  scoreboard players set #Magic.MP Asset 5
## 
  function asset.lib:magic/cast/check.mp
## 
  execute if data storage asset:magic {CanCast:1b} run function asset:magic/52201/cast/main
