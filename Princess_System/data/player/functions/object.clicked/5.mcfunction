#> player:object.clicked/5
# クリックしたオブジェクトを特定1
# @within function player:object.clicked/4

## 
  execute if entity @s[tag=NPC.5.0] if entity @a[tag=This,advancements={player:object.clicked={5-0=true}}] run function player:object.clicked/6
  execute if entity @s[tag=NPC.5.1] if entity @a[tag=This,advancements={player:object.clicked={5-1=true}}] run function player:object.clicked/6
  execute if entity @s[tag=NPC.5.2] if entity @a[tag=This,advancements={player:object.clicked={5-2=true}}] run function player:object.clicked/6
  execute if entity @s[tag=NPC.5.3] if entity @a[tag=This,advancements={player:object.clicked={5-3=true}}] run function player:object.clicked/6
