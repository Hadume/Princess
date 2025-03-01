#> menu:magic/
# 魔法
# @within function menu:

##
	execute if entity @s[scores={Menu=3000}] run function menu:magic/root/
	execute if entity @s[scores={Menu=3100..3499}] run function menu:magic/select/

## 一時使用Storageを削除
	execute if data storage temp: Menu run data remove storage temp: Menu
