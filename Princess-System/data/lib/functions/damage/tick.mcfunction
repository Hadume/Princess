#> lib:damage/tick
# ダメージ表示用Entityで常時実行
# @within function main:tick/

## スコアを増加
  scoreboard players add @s Lib 1
## 表示を更新
  execute if entity @s[scores={Lib=2}] run data modify entity @s Fire set value 0s
## 表示を消す
  execute if entity @s[scores={Lib=8..}] run kill @s
