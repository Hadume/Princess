#> lib:range/loop/1
# 
# @within function lib:range/loop/

## 貫通した
  scoreboard players remove #Pierce Lib 1
## tagを追加
  tag @s add Lib.InRange
## まだ貫通できるなら
  execute if data storage lib: {Range:{Target:["Enemy"]}} if score #Pierce Lib matches 1.. as @e[type=#mob:living,tag=Enemy,tag=!Lib.InRange,distance=..16,sort=nearest,limit=1] at @s run function lib:range/loop/
  execute if data storage lib: {Range:{Target:["Player"]}} if score #Pierce Lib matches 1.. as @p[tag=!Lib.InRange,distance=..16] at @s run function lib:range/loop/
