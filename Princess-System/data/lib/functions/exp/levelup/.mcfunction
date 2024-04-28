#> lib:exp/levelup/
# レベルアップ
# @within function lib:exp/

#> ScoreHolder
# @within function lib:exp/levelup/*
 #declare score_holder #Exp.Need.Copy
## 
  function lib:exp/levelup/loop
## レベルアップを知らせる
  tellraw @s [{"text": "\nレベルが"},{"score":{"name": "@s","objective": "Lvl"},"color": "yellow","bold": true},{"text": "になりました！"}]
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Exp.Need.Copy
