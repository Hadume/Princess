#> menu:skilltree/root/
# スキルツリーの処理
# @within function menu:skilltree/

## どこかをクリックしていたら
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Back:1b}}] run return run function menu:home/root/open
	execute unless entity @s[scores={SkillTree=1..}] if items entity @s player.cursor *[minecraft:custom_data~{Menu:{SkillTree:{}}}] run function menu:skilltree/root/move

## 欠けていたら修復
	execute unless score #InvCount Temp matches 27 run function menu:_common/repair {Parent:"skilltree",Child:"root"}
