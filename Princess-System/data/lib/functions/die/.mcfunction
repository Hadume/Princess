#> lib:die/
# 死
# @input as entity
# @api

## 
  #execute if entity @s[type=player]
  execute if entity @s[type=!player] run function lib:die/entity/
