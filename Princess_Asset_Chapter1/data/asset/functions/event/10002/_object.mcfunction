#> asset:event/10002/_object
# 
# @within 

## 
  summon villager 152 76 27 {Invulnerable:1b,NoAI:1b,Rotation:[-180f,0f],VillagerData:{profession:"",level:1,type:"plains"},CustomName:'{"text": "兵士","color": "red"}',Tags:["Object","Init"]}
## ID
  scoreboard players set $ID.Object Temp 10002
## 初期化
  execute as @e[type=villager,tag=Init] run function lib.asset:event/object.init
