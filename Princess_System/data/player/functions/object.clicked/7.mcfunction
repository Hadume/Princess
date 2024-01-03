#> player:object.clicked/7
# クリックしたオブジェクトを特定1
# @within function player:object.clicked/6

## 
  execute if entity @s[tag=NPC.7.0] if entity @a[tag=This,advancements={player:object.clicked={7-0=true}}] run function player:object.clicked/found
  execute if entity @s[tag=NPC.7.1] if entity @a[tag=This,advancements={player:object.clicked={7-1=true}}] run function player:object.clicked/found
  execute if entity @s[tag=NPC.7.2] if entity @a[tag=This,advancements={player:object.clicked={7-2=true}}] run function player:object.clicked/found
  execute if entity @s[tag=NPC.7.3] if entity @a[tag=This,advancements={player:object.clicked={7-3=true}}] run function player:object.clicked/found
