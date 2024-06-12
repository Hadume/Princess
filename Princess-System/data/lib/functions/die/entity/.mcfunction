#> lib:die/entity/
# 
# @within function lib:die/

#> ScoreHolder.Temp
# @within function lib:die/entity/**
 #declare score_holder #Exp.Copy
 #declare score_holder #Money.Copy
 #declare score_holder #ID.Copy
#> Tags.Temp
# @within function lib:die/entity/**
 #declare tag Looted

## データ変更
  data modify entity @s CustomName set value ''
  data modify entity @s CustomNameVisible set value 0b
  data modify entity @s PersistenceRequired set value 0b
## スコアをコピー
  scoreboard players operation #Exp.Copy Temp = @s Exp
  scoreboard players operation #Money.Copy Temp = @s Money
## 個人ストレージを呼ぶ
  function data.entity:please
## データをコピー
  data modify storage lib:temp AttackBy set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].AttackBy
## 
  execute if data storage lib:temp AttackBy[] run function lib:die/entity/loot/loop
## tagを削除
  execute as @a[tag=Looted] run tag @s remove Looted
## kill
  kill @s
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Exp.Copy Temp
  scoreboard players reset #Money.Copy Temp
  scoreboard players reset #ID.Copy
## 一時使用Storageを削除
  data remove storage lib:temp AttackBy
