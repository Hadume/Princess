#> lib:exp/levelup/loop
# レベルアップ
# @within function lib:exp/levelup/*

## レベルを上げる
  scoreboard players add @s Lvl 1
## ステータス
  ### 上昇
    scoreboard players add @s HP.Max.Base 10
    scoreboard players add @s ATK.Base 1
    scoreboard players add @s DEF.Base 1
  ### 更新
    function #lib:stats
## 体力、魔力を回復
  scoreboard players operation @s HP = @s HP.Max
  scoreboard players operation @s MP = @s MP.Max
  ### 更新
    function lib:status/hp/update/
    function lib:status/mp/update
## 次レベルで必要な経験値量を計算
  scoreboard players operation #Exp.Need.Copy Temp = @s Exp.Need
  scoreboard players operation #Exp.Need.Copy Temp /= #10 Const
  scoreboard players operation @s Exp.Need += #Exp.Need.Copy Temp
## 経験値を反映
  scoreboard players operation @s Exp += @s Exp.Need
## まだレベルアップできるなら
  execute if entity @s[scores={Exp=..0}] run function lib:exp/levelup/loop
