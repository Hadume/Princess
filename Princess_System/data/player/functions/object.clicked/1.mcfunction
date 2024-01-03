#> player:object.clicked/1
# クリックしたオブジェクトを特定1
# @within function player:object.clicked/condition

## 
  execute if entity @s[tag=NPC.1.0] if entity @a[tag=This,advancements={player:object.clicked={1-0=true}}] run function player:object.clicked/2
  execute if entity @s[tag=NPC.1.1] if entity @a[tag=This,advancements={player:object.clicked={1-1=true}}] run function player:object.clicked/2
  execute if entity @s[tag=NPC.1.2] if entity @a[tag=This,advancements={player:object.clicked={1-2=true}}] run function player:object.clicked/2
  execute if entity @s[tag=NPC.1.3] if entity @a[tag=This,advancements={player:object.clicked={1-3=true}}] run function player:object.clicked/2
