#> asset:move/13006/open/
# 
# @within function asset:move/13006/condition

#> ScoreHolder
# @private
 #declare score_holder $CountCopy
 #declare score_holder $Success
## インベントリー参照
  function api:inventory/
## 鍵を開けられるように
  execute unless data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=Locking] run tag @s remove Locking
## Countを取得
  execute store result score $CountCopy Temp run clear @s emerald{MazeEmerald:1b} 0
## 鍵を開ける
  execute if data storage api: {Inventory:[{id:"minecraft:emerald",tag:{MazeEmerald:1b}}]} if score $CountCopy Temp matches 3.. if data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=!Locking] store success score $Success Temp run function asset:move/13006/open/open
  execute unless score $Success Temp = $Success Temp if data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=!Locking] run function asset:move/13006/open/locking
## 一時使用ScoreHolderをリセット
  scoreboard players reset $CountCopy
