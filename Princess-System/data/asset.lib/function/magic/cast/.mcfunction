#> asset.lib:magic/cast/
# 魔法を唱える
# @within function
#   player:offhand
#   main:advancements/shot_crossbow

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## データを削除
	execute if data storage asset:magic ID run data remove storage asset:magic ID

## IDをコピー
	execute if data storage player: Mainhand unless predicate player:sneaking run function asset.lib:magic/cast/condition/click
	execute if data storage player: Mainhand if predicate player:sneaking run function asset.lib:magic/cast/condition/click_s
	execute if data storage player: Offhand unless predicate player:sneaking run function asset.lib:magic/cast/condition/offhand
	execute if data storage player: Offhand if predicate player:sneaking run function asset.lib:magic/cast/condition/offhand_s
