#> lib:die/entity/loot/loop
# 報酬を渡すプレイヤーの特定
# @within function lib:die/entity/
# @private

## IDをコピー
  execute store result score #ID.Copy Temp run data get storage lib:temp AttackBy[-1]
## IDが同じプレイヤーにドロップ品を
  execute as @a[tag=!Looted] if score @s PlayerID = #ID.Copy Temp run function lib:die/entity/loot/main
## データを消す
  data remove storage lib:temp AttackBy[-1]
## ループ
  execute if data storage lib:temp AttackBy[] run function lib:die/entity/loot/loop
