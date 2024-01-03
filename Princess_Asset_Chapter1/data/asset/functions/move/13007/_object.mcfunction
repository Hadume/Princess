#> asset:move/13007/_object
# 
# @within 

## 
  summon marker 141.0 20 -54 {Tags:["Object","Init"],data:{Move:1b}}
## ID
  execute as @e[type=marker,tag=Init] run data modify entity @s data.ID set value 13007
  execute as @e[type=marker,tag=Init] run tag @s remove Init
