#> asset:event/10001/_object
# 「オーナー」を召喚
# @within 

## 
  summon villager 250 66.0625 143 {Invulnerable:1b,NoAI:1b,Rotation:[180.0f,0.0f],CustomName:'{"text": "オーナー"}',VillagerData:{profession:"cleric",level:5,type:"plains"},Offers:{},Tags:["Object","Init"]}
## ID
  scoreboard players set $ID.Object Temp 10001
## 初期化
  execute as @e[type=villager,tag=Init] run function lib.asset:event/object.init
