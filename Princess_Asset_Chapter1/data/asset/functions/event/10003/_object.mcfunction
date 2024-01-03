#> asset:event/10003/_object
# 
# @within 

## 
  summon marker 171 81 -21 {Tags:["Object","Init"]}
## ID
  execute as @e[type=marker,tag=Init] run data modify entity @s data.ID set value 10003
  execute as @e[type=marker,tag=Init] run tag @s remove Init
