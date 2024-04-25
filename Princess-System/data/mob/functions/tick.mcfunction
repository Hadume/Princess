#> mob:tick
# MOBで常時実行
# @within function main:tick/

## デスポーン
  execute unless entity @a[distance=..32] run function mob:kill
