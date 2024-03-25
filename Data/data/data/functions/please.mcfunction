#> data:please
# 
# @public

#> Storage
# @public
 #declare storage data:
## 個人ストレージを呼ぶ
  execute if entity @s[type=player] run function data.player:please
  execute if entity @s[type=!player] run function data.entity:please
## データを移す
  execute if entity @s[type=player] run data modify storage data: _ set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4]
  execute if entity @s[type=!player] run data modify storage data: _ set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4]
