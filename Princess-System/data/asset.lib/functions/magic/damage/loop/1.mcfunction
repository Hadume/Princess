#> asset.lib:magic/damage/loop/1
# 
# @within function asset.lib:magic/damage/loop/

## 攻撃者のIDを保存
  execute if entity @s[type=player] run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].AttackBy append from storage asset:temp Magic.CasterID
  execute if entity @s[type=!player] run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].AttackBy append from storage asset:temp Magic.CasterID
## 防御力を取得
  scoreboard players operation #Lib.DEF Lib = @s DEF
## ダメージを与える
  execute at @s anchored eyes run function lib:damage/
## ダメージ表示
  damage @s 0.00000000000000001 out_of_world
## 貫通した
  scoreboard players remove #Pierce Temp 1
  tag @s add Pierced
## まだ貫通できるなら
  execute store success storage asset:temp Pierced byte 1 if score #Pierce Temp matches ..0
## まだ貫通できるなら
  execute if score #Pierce Temp matches 1.. as @e[type=#mob:living,tag=Enemy,tag=!Pierced,distance=..16,sort=nearest,limit=1] at @s run function asset.lib:magic/damage/loop/
