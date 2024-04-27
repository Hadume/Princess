#> lib:damage/display
# 
# @within function lib:damage/

## 座標を代入
  data modify entity @s Pos set from storage lib: Spread.At1
## NBTを変更
  data modify entity @s PickupDelay set value 32767s
  data modify entity @s CustomNameVisible set value 1b
  data modify entity @s CustomName set from entity @s Item.tag.display.Name
## tagを追加
  tag @s add Lib.Damage
## 初期化tagを削除
  data remove entity @s Item.tag.Lib.Init
