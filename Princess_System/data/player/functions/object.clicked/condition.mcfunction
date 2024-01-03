#> player:object.clicked/condition
# 
# @within function player:object.clicked/

#> ScoreHolder
# @within function player:object.clicked/*
# @within function asset:event/*/
 #declare score_holder $ObjectID
#> Tags
# @within function player:object.clicked/*
# @within function npc:*/*
 #declare tag ClickedObject
#> Tags
# @within function player:object.clicked/*
 #declare tag This
## 自身にタグを
  tag @s add This
## 話しかけた村人を特定
  execute as @e[type=villager,scores={ID.Object=..2147483647},distance=..6] if entity @s[tag=NPC.0.0] if entity @a[tag=This,advancements={player:object.clicked={0-0=true}}] run function player:object.clicked/1
  execute as @e[type=villager,scores={ID.Object=..2147483647},distance=..6] if entity @s[tag=NPC.0.1] if entity @a[tag=This,advancements={player:object.clicked={0-1=true}}] run function player:object.clicked/1
  execute as @e[type=villager,scores={ID.Object=..2147483647},distance=..6] if entity @s[tag=NPC.0.2] if entity @a[tag=This,advancements={player:object.clicked={0-2=true}}] run function player:object.clicked/1
  execute as @e[type=villager,scores={ID.Object=..2147483647},distance=..6] if entity @s[tag=NPC.0.3] if entity @a[tag=This,advancements={player:object.clicked={0-3=true}}] run function player:object.clicked/1
## 内容
  execute if score $ObjectID Temp matches ..2147483647 run function #asset:event/object.clicked
## タグを削除
  tag @s remove This
  execute as @e[type=villager,tag=ClickedObject] run tag @s remove ClickedObject
## 一時使用Storageを削除
  execute if data storage asset.temp: TalkedCopy run data remove storage asset.temp: TalkedCopy
## 一時使用ScoreHolderをリセット
  scoreboard players reset $ObjectID
