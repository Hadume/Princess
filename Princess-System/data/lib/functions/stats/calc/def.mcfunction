#> lib:stats/calc/def
# 最大体力
# @within function lib:stats/main

## ステータスをコピー
  scoreboard players operation #Amount Temp = @s DEF.Base
## データをコピー
  data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"DEF"}]
  data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"DEF"}]
## 追加効果があったら
  execute if data storage lib:temp Stats[] run function lib:stats/calc/common/
## ステータスを反映
  scoreboard players operation @s DEF = #Amount Temp
