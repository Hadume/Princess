#> asset:magic/52101/cast/main
#
# @within function asset:magic/52101/cast/check.condition

## 共通処理
  function asset.lib:magic/cast/common/
## 本体を召喚
  summon armor_stand ~ ~ ~ {Passengers:[{id:"block_display",block_state:{Name:"magma_block"},Tags:["Spell.Init","Spell.Display"]}],Tags:["Spell","Spell.Init"]}
## 初期化
  function asset.lib:magic/cast/spell/check.condition
## 音を鳴らす
  execute at @s run playsound item.firecharge.use master @a ~ ~ ~ 0.5 1
