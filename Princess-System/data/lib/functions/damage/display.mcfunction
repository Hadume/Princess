#> lib:damage/display
# 
# @within function lib:damage/

## 表示を拡散
  data modify storage lib: Spread.Amount set value [0.1d,0.2d]
  function lib:spread/
## NBTを変更
  data modify entity @s PickupDelay set value 32767s
  data modify entity @s CustomNameVisible set value 1b
  data modify entity @s CustomName set from entity @s Item.tag.display.Name
## tagを追加
  tag @s add Lib.Damage
## 初期化tagを削除
  data remove entity @s Item.tag.Lib.Init
