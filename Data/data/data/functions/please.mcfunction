#> data:please
# 
# @public

#> Storage
# @public
 #declare storage data:
## 個人ストレージを呼ぶ
  execute if entity @s[type=player] run function data:player
  execute if entity @s[type=!player] run function data:entity
