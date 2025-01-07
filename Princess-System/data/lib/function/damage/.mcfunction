#> lib:damage/
#
# @input
#   as entity
#   position
#   rotation
#   score_holder
#     #Lib.ATK Lib
#     #Lib.DEF Lib
# @output score_holder #Lib.Damage Lib
# @within tag/function lib:damage

## 引数の確認
	execute store success storage temp: Error byte 1 unless score #Lib.ATK Lib matches ..2147483647 run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"#Lib.ATK Lib"]
	execute store success storage temp: Error byte 1 unless score #Lib.DEF Lib matches ..2147483647 run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"#Lib.DEF Lib"]

##
	execute unless data storage temp: Error run function lib:damage/main

## 引数を削除
	scoreboard players reset #Lib.ATK
	scoreboard players reset #Lib.DEF

## 一時使用Storageを削除
	execute if data storage temp: Error run data remove storage temp: Error
