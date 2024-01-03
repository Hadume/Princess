#> asset:move/13003/_object
# 
# @within 

## 
  summon marker 178 81 -46 {Tags:["Object","Init"],data:{Move:1b}}
## ID
  execute as @e[type=marker,tag=Init] run data modify entity @s data.ID set value 13003
  execute as @e[type=marker,tag=Init] run tag @s remove Init
