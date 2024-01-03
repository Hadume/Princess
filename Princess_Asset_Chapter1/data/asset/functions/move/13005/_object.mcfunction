#> asset:move/13005/_object
# 
# @within 

## 
  summon marker 139 57 -62 {Tags:["Object","Init"],data:{Move:1b}}
## ID
  execute as @e[type=marker,tag=Init] run data modify entity @s data.ID set value 13005
  execute as @e[type=marker,tag=Init] run tag @s remove Init
