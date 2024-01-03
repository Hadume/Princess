#> main:tick/interval.4
# 4tickごとに
# @within function main:tick/

## 移動可能な場所にパーティクルを
  execute as @e[type=marker,tag=Object] at @s if entity @a[distance=..16] run function lib.asset:move/particle/
