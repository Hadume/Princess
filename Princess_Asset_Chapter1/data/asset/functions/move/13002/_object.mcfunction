#> asset:move/13002/_object
# 
# @within 

## 
  summon marker 171 80 1 {Tags:["Object","Init"],data:{Move:1b}}
## ID
  execute as @e[type=marker,tag=Init] run data modify entity @s data.ID set value 13002
  execute as @e[type=marker,tag=Init] run tag @s remove Init
