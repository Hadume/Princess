#> player:object.clicked/2
# クリックしたオブジェクトを特定1
# @within function player:object.clicked/1

## 
  execute if entity @s[tag=NPC.2.0] if entity @a[tag=This,advancements={player:object.clicked={2-0=true}}] run function player:object.clicked/3
  execute if entity @s[tag=NPC.2.1] if entity @a[tag=This,advancements={player:object.clicked={2-1=true}}] run function player:object.clicked/3
  execute if entity @s[tag=NPC.2.2] if entity @a[tag=This,advancements={player:object.clicked={2-2=true}}] run function player:object.clicked/3
  execute if entity @s[tag=NPC.2.3] if entity @a[tag=This,advancements={player:object.clicked={2-3=true}}] run function player:object.clicked/3
