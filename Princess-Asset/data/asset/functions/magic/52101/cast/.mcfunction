#> asset:magic/52101/cast/
#
# @within function asset:magic/cast

## 本体を召喚
	summon armor_stand ~ ~ ~ {Passengers:[{id:"block_display",block_state:{Name:"magma_block"},Tags:["Spell.Init","Spell.Display"]}],Tags:["Spell","Spell.Init"]}
## 初期化
	function asset.lib:magic/cast/spell/
## 音を鳴らす
	execute at @s run playsound item.firecharge.use master @a ~ ~ ~ 0.5 1
