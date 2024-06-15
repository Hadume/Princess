#> lib:stats/calc/mp.max
# 最大魔力
# @within function lib:stats/main

## ステータスをコピー
  scoreboard players operation #Amount Temp = @s MP.Max.Base
## データをコピー
  data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"MPMax"}]
  data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"MPMax"}]
##
  execute if data storage lib:temp Stats[] run function lib:stats/calc/common/
## ステータスを反映
  execute if score #Amount Temp matches ..0 run scoreboard players set #Amount Temp 1
  scoreboard players operation @s MP.Max = #Amount Temp
## 更新
  function lib:status/mp/update
