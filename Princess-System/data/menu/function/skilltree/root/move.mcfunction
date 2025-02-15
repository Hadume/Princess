#> menu:skilltree/root/move
# 移動
# @within function menu:skilltree/root/

##
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{SkillTree:{Flamme:1b}}}] run function skilltree:move/flamme
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{SkillTree:{Wind:1b}}}] run function skilltree:move/wind
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{SkillTree:{Wasser:1b}}}] run function skilltree:move/wasser
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{SkillTree:{Licht:1b}}}] run function skilltree:move/licht
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{SkillTree:{Dunkel:1b}}}] run function skilltree:move/dunkel
