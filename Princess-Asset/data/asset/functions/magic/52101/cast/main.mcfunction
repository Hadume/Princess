#> asset:magic/52101/cast/main
# 
# @within function asset:magic/52101/cast/check.condition

## 本体を召喚
  summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"magma_block",Count:1b}],Tags:["Spell","Spell.Init"]}
## 初期化
  function asset.lib:magic/cast/spell/check.condition
## 音を鳴らす
  execute at @s run playsound item.firecharge.use master @a ~ ~ ~ 0.5 1
## tick処理
  schedule function asset:magic/52101/tick/ 1t
