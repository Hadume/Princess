#> lib:hp/recover/main
# HPを回復
# @within function lib:hp/recover/tick

#> ScoreHolder
# @private
 #declare score_holder #HP.Max.Copy
 #declare score_holder #HP.RcvrPer.Copy
## 数値を取得
  execute store result score #HP.RcvrPer.Copy Temp run data get storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.HP.RcvrPer
## 回復値
  scoreboard players operation #HP.Max.Copy Temp = @s HP.Max
  scoreboard players operation #HP.Max.Copy Temp *= #HP.RcvrPer.Copy Temp
  scoreboard players operation #HP.Max.Copy Temp /= #100 Const
## 回復
  scoreboard players operation @s HP += #HP.Max.Copy Temp
## HPを更新
  function lib:hp/update
## 一時使用ScoreHolderをリセット
  scoreboard players reset #HP.Max.Copy
  scoreboard players reset #HP.RcvrPer.Copy
