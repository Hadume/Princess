#> player:object.clicked/3
# クリックしたオブジェクトを特定1
# @within function player:object.clicked/2

## 
  execute if entity @s[tag=NPC.3.0] if entity @a[tag=This,advancements={player:object.clicked={3-0=true}}] run function player:object.clicked/4
  execute if entity @s[tag=NPC.3.1] if entity @a[tag=This,advancements={player:object.clicked={3-1=true}}] run function player:object.clicked/4
  execute if entity @s[tag=NPC.3.2] if entity @a[tag=This,advancements={player:object.clicked={3-2=true}}] run function player:object.clicked/4
  execute if entity @s[tag=NPC.3.3] if entity @a[tag=This,advancements={player:object.clicked={3-3=true}}] run function player:object.clicked/4
