#> lib:range/loop/1
#
# @within function lib:range/loop/

## 貫通した
	scoreboard players remove #Pierce Temp 1
## tagを追加
	tag @s add Lib.InRange
## まだ貫通できるなら
	execute if score #Pierce Temp matches 1.. as @e[tag=Lib.TempRange,tag=!Lib.InRange,sort=nearest,limit=1] at @s run function lib:range/loop/
