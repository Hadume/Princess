#> player:object.clicked/4
# クリックしたオブジェクトを特定1
# @within function player:object.clicked/3

## 
  execute if entity @s[tag=NPC.4.0] if entity @a[tag=This,advancements={player:object.clicked={4-0=true}}] run function player:object.clicked/5
  execute if entity @s[tag=NPC.4.1] if entity @a[tag=This,advancements={player:object.clicked={4-1=true}}] run function player:object.clicked/5
  execute if entity @s[tag=NPC.4.2] if entity @a[tag=This,advancements={player:object.clicked={4-2=true}}] run function player:object.clicked/5
  execute if entity @s[tag=NPC.4.3] if entity @a[tag=This,advancements={player:object.clicked={4-3=true}}] run function player:object.clicked/5
