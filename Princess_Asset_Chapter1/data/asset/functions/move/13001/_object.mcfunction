#> asset:move/13001/_object
# 
# @within 

## 
  summon marker 160 76 19 {Tags:["Object","Init"],data:{Move:1b}}
## ID
  execute as @e[type=marker,tag=Init] run data modify entity @s data.ID set value 13001
  execute as @e[type=marker,tag=Init] run tag @s remove Init
