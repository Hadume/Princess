#> asset:move/13004/_object
# 
# @within 

## 
  summon marker 171 65 -70 {Tags:["Object","Init"],data:{Move:1b}}
## ID
  execute as @e[type=marker,tag=Init] run data modify entity @s data.ID set value 13004
  execute as @e[type=marker,tag=Init] run tag @s remove Init
