#> menu:home/root/
# メニューの動作
# @within function menu:

## どこかをクリックしていたら
#execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{SkillTree:1b}}] run return run function menu:skilltree/root/open
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{SkillTree:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
	#execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Equipment:1b}}] run return run function menu:equipment/root/open
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Equipment:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Magic:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Status:1b}}] run return run function menu:status/root/open
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Storage:1b}}] run return run function menu:storage/root/open
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Quest:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
	#execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Communicate:1b}}] run return run function menu:communicate/root/open/
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Communicate:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}

## 欠けていたら修復
	execute unless score #InvCount Temp matches 27 run function menu:_common/repair {Parent:"home",Child:"root"}
