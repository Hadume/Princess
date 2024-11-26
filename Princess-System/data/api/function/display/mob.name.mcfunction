#> api:display/mob.name
# MOBのステータス表示
# @within tag/function api:display/mob.name

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## 体力によって色を変更
	execute if entity @s[scores={ScoreToHealth=1001..}] run data modify storage temp: NameColor set value '{"text":"","color":"green"}'
	execute if entity @s[scores={ScoreToHealth=201..1000}] run data modify storage temp: NameColor set value '{"text":"","color":"yellow"}'
	execute if entity @s[scores={ScoreToHealth=..200}] run data modify storage temp: NameColor set value '{"text":"","color":"red"}'

## 名前を表示
	loot replace block 0 -64 0 container.0 loot api:display/mob.status
	data modify entity @s CustomName set from block 0 -64 0 Items[0].components."minecraft:custom_name"

## 一時使用Storageを削除
	data remove storage temp: NameColor
