#> lib:damage/
# 
# @input
#   as entity
#   position
#   rotation
#   score
#     #Lib.ATK Lib
#     #Lib.DEF Lib
# @output score #Lib.Damage Lib
# @api

## 引数の確認
  execute store success storage lib:temp Error byte 1 unless score #Lib.ATK Lib matches ..2147483647 run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "#Lib.ATK"}]
  execute store success storage lib:temp Error byte 1 unless score #Lib.DEF Lib matches ..2147483647 run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "#Lib.DEF"}]
## 
  execute unless data storage lib:temp Error run function lib:damage/main
## 引数を削除
  scoreboard players reset #Lib.ATK
  scoreboard players reset #Lib.DEF
## 一時使用Storageを削除
  execute if data storage lib:temp Error run data remove storage lib:temp Error
