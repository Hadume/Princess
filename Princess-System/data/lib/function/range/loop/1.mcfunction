#> lib:range/loop/1
#
# @within function lib:range/loop/

## 貫通した
    scoreboard players remove #pierce temp 1

## tagを追加
    tag @s add libInRange

## まだ貫通できるなら
    execute if score #pierce temp matches 1.. as @e[tag=libTempRange,tag=!libInRange,sort=nearest,limit=1] at @s run function lib:range/loop/
