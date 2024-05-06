#> mob:tick
# MOBで常時実行
# @within function main:tick/

## デスポーン
  execute unless entity @a[distance=..64] run function mob:kill
