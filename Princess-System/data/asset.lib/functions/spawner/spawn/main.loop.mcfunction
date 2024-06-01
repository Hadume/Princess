#> asset.lib:spawner/spawn/main.loop
# 
# @within function asset.lib:spawner/spawn/
# @private

#> Tags
# @private
 #declare tag Pos
## リストの何番目を選択するか
  execute store result score #List.Length Temp if data storage asset:temp dataCopy.Data[]
  execute store result score #Rand Temp run random value 1..
  scoreboard players operation #Rand Temp %= #List.Length Temp
  execute if score #Rand Temp matches 1.. run function asset.lib:spawner/spawn/select.list.loop
## 座標を算出
  data modify storage lib: Spread.Amount set value [0.0f,0.0f]
  data modify storage lib: Spread.Amount[0] set from storage asset:temp dataCopy.Range
  data modify storage lib: Spread.Amount[1] set from storage asset:temp dataCopy.Range
  summon marker ~ ~ ~ {Tags:["Pos"]}
  execute as @e[type=marker,tag=Pos] at @s run function lib:spread/
## MOBを召喚
  data modify storage asset:mob ID set from storage asset:temp dataCopy.Data[-1].ID
  execute at @e[type=marker,tag=Pos] align xz positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ #main:no_collision if block ~ ~0.9 ~ #main:no_collision if block ~ ~1.8 ~ #main:no_collision run particle poof ~ ~ ~ 0.3 0.3 0.3 0 10 normal
  execute at @e[type=marker,tag=Pos] align xz positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ #main:no_collision if block ~ ~0.9 ~ #main:no_collision if block ~ ~1.8 ~ #main:no_collision run function #asset:mob/summon
## 
  kill @e[type=marker,tag=Pos]
## 
  scoreboard players remove #Spawn.Count Temp 1
## 
  execute if score #Spawn.Count Temp matches 1.. run function asset.lib:spawner/spawn/main.loop
