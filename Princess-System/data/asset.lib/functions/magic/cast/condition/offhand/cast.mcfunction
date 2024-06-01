#> asset.lib:magic/cast/condition/offhand/cast
# 
# @within function asset.lib:magic/cast/condition/offhand/

## IDをコピー
  data modify storage asset:magic ID set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[2].ID
## 
  execute anchored eyes positioned ^ ^ ^ run function #asset:magic/cast
## クールタイムを設定
  execute store result score @s CT.Offhand run data get storage asset:magic CoolTime
