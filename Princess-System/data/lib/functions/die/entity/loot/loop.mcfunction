#> lib:die/entity/loot/loop
# 
# @within function
#   lib:die/entity/
#   lib:die/entity/loot/loop

## IDをコピー
  execute store result score #ID.Copy Temp run data get storage lib:temp AttackBy[-1]
## IDが同じプレイヤーにドロップ品を
  execute as @a[tag=!Looted] if score @s PlayerID = #ID.Copy Temp run function lib:die/entity/loot/main
## データを消す
  data remove storage lib:temp AttackBy[-1]
## ループ
  execute if data storage lib:temp AttackBy[] run function lib:die/entity/loot/loop
