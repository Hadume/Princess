#> lib:stats/calc/mgc.range
# 魔法、効果範囲
# @within function lib:stats/main

## ステータスをコピー
  scoreboard players operation #Amount Temp = @s Mgc.Range.Base
## データをコピー
  data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"Mgc.Range"}]
  data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"Mgc.Range"}]
## 追加効果があったら
  execute if data storage lib:temp Stats[] run function lib:stats/calc/common/
## ステータスを反映
  scoreboard players operation @s Mgc.Range = #Amount Temp
