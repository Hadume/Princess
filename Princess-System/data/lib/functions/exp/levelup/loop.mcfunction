#> lib:exp/levelup/loop
# レベルアップ
# @within function lib:exp/levelup/*

## レベルを上げる
  scoreboard players add @s Lvl 1
## ステータス上昇
  scoreboard players add @s HP.Max.Base 10
  scoreboard players add @s ATK.Base 1
  scoreboard players add @s DEF.Base 1
## 次レベルで必要な経験値量を計算
  scoreboard players operation #Exp.Need.Copy Temp = @s Exp.Need
  scoreboard players operation #Exp.Need.Copy Temp /= #10 Const
  scoreboard players operation @s Exp.Need += #Exp.Need.Copy Temp
## 経験値を反映
  scoreboard players operation @s Exp += @s Exp.Need
## まだレベルアップできるなら
  execute if entity @s[scores={Exp=..0}] run function lib:exp/levelup/loop
