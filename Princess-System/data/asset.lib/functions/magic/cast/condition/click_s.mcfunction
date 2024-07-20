#> asset.lib:magic/cast/condition/click_s
# 右クリック+シフト で魔法を発動
# @within function asset.lib:magic/cast/

## 数値をコピー
  scoreboard players operation #CT.Copy Temp = @s CT.ClickS
  data modify storage asset:magic ID set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[1].ID
## 魔法を発動
  function asset.lib:magic/cast/condition/_common
## クールタイムを設定
  execute if data storage asset:magic Cooltime store result score @s CT.ClickS run data get storage asset:magic Cooltime
