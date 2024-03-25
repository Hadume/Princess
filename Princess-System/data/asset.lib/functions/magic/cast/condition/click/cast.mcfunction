#> asset.lib:magic/cast/condition/click/cast
# 魔法を発動
# @within function asset.lib:magic/cast/condition/click/

## IDをコピー
  data modify storage asset: Magic.ID set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Key.Click
## 
  execute anchored eyes positioned ^ ^ ^ run function #asset:magic/cast
## クールタイムを設定
  execute store result score @s CT.Click run data get storage asset: Magic.CoolTime
