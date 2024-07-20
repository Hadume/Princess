#> lib:stats/calc/mgc.spread
# 魔法、拡散範囲
# @within function lib:stats/main

## ステータスをコピー
  scoreboard players operation #Amount Temp = @s Mgc.Spread.Base
## データをコピー
  data modify storage lib:temp Stats append from storage lib:temp Armor[{tag:{Category:"Armor"}}].tag.Stats[{Name:"Mgc.Spread"}]
  data modify storage lib:temp Stats append from storage lib:temp Weapon[{tag:{Category:"Wand"}}].tag.Stats[{Name:"Mgc.Spread"}]
## 追加効果があったら
  execute if data storage lib:temp Stats[] run function lib:stats/calc/common/
## ステータスを反映
  scoreboard players operation @s Mgc.Spread = #Amount Temp
