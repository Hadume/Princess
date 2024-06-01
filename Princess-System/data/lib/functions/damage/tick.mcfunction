#> lib:damage/tick
# ダメージ表示用Entityで常時実行
# @within function main:tick/

## スコアを増加
  scoreboard players add @s Lib 1
## 表示を消す
  execute if entity @s[scores={Lib=10..}] run kill @s
