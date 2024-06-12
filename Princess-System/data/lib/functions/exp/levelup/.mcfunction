#> lib:exp/levelup/
# レベルアップ
# @within function lib:exp/

#> ScoreHolder.Temp
# @within function lib:exp/levelup/*
 #declare score_holder #Exp.Need.Copy

## 
  function lib:exp/levelup/loop
## ステータスを更新
  function #lib:stats
## 体力、魔力を回復
  scoreboard players operation @s HP = @s HP.Max
  scoreboard players operation @s MP = @s MP.Max
  ### 更新
    function lib:status/hp/update/
    function lib:status/mp/update
## レベルアップを知らせる
  tellraw @s [{"text": "\nレベルが"},{"score":{"name": "@s","objective": "Lvl"},"color": "yellow","bold": true},{"text": "になりました！"}]
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Exp.Need.Copy
