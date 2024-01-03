#> player:object.clicked/6
# クリックしたオブジェクトを特定1
# @within function player:object.clicked/5

## 
  execute if entity @s[tag=NPC.6.0] if entity @a[tag=This,advancements={player:object.clicked={6-0=true}}] run function player:object.clicked/7
  execute if entity @s[tag=NPC.6.1] if entity @a[tag=This,advancements={player:object.clicked={6-1=true}}] run function player:object.clicked/7
  execute if entity @s[tag=NPC.6.2] if entity @a[tag=This,advancements={player:object.clicked={6-2=true}}] run function player:object.clicked/7
  execute if entity @s[tag=NPC.6.3] if entity @a[tag=This,advancements={player:object.clicked={6-3=true}}] run function player:object.clicked/7
