#> asset:magic/52201/cast/spell
# 魔法の本体
# @within function asset:magic/52201/cast/
# @private

## 本体を召喚
	execute anchored eyes run summon armor_stand ^ ^ ^ {Passengers:[{id:"block_display",block_state:{Name:"tube_coral_block"},Tags:["Spell.Init","Spell.Display"]}],Tags:["Spell","Spell.Init"]}

## 初期化
	function #asset.lib:magic/cast/spell

## 発動数を減らす
	scoreboard players remove #Multiple Asset 1

## まだ発動する
	execute if score #Multiple Asset matches 1.. run function asset:magic/52201/cast/spell
