#> asset.lib:magic/cast/condition/click_s/cast
# 
# @within function asset.lib:magic/cast/condition/click_s/

## IDをコピー
  data modify storage asset:magic ID set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[1].ID
## 
  execute anchored eyes positioned ^ ^ ^ run function #asset:magic/cast
## クールタイムを設定
  execute store result score @s CT.ClickS run data get storage asset:magic CoolTime
