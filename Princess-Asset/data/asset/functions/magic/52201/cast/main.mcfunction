#> asset:magic/52201/cast/main
# 
# @within function asset:magic/52201/cast/check.condition

## 本体を召喚
  summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"tube_coral_block",Count:1b}],Tags:["Spell","Spell.Init"]}
## 初期化
  function asset.lib:magic/cast/spell/check.condition
## tick処理
  schedule function asset:magic/52201/tick/ 1t
## 音を鳴らす
  execute at @s run playsound entity.generic.splash master @a ~ ~ ~ 0.5 1
  execute at @s run playsound block.bubble_column.upwards_ambient master @a ~ ~ ~ 0.5 2
