#> asset:move/13006/_object
# 
# @within 

## 
  summon marker 162 57 -4 {Tags:["Object","Init"],data:{Move:1b}}
## ID
  execute as @e[type=marker,tag=Init] run data modify entity @s data.ID set value 13006
  execute as @e[type=marker,tag=Init] run tag @s remove Init
