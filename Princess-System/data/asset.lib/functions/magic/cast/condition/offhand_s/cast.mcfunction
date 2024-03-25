#> asset.lib:magic/cast/condition/offhand_s/cast
# 
# @within function asset.lib:magic/cast/condition/offhand_s/

## IDをコピー
  data modify storage asset: Magic.ID set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Key.OffhandS
## 
  execute anchored eyes positioned ^ ^ ^ run function #asset:magic/cast
## クールタイムを設定
  execute store result score @s CT.OffhandS run data get storage asset: Magic.CoolTime
