#> asset:magic/52301/cast/main
# 
# @within function asset:magic/52301/cast/check.condition

## 
  function asset.lib:magic/action/range/
## 引き寄せる
  function api:get.nbt/pos
  data modify storage lib: Spread.At set from storage api: Pos
  data modify storage lib: Spread.Amount set value [1.5f,0.0f]
  data modify storage lib: Spread.OnGround set value 1b
  execute at @s as @e[tag=Lib.InRange] run function lib:spread/
## 音を鳴らす
  execute at @s run playsound item.trident.riptide_2 master @a ~ ~ ~ 1 1
  execute at @s run playsound item.trident.riptide_3 master @a ~ ~ ~ 0.25 2
