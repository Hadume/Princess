#> lib:status/hp/recover/main
# HPを回復
# @within function lib:status/hp/recover/tick

#> ScoreHolder
# @private
 #declare score_holder #HP.RcvrPer.Copy

## 回復値
  scoreboard players operation #HP.RcvrPer.Copy Temp = @s HP.Rcvr.Per
  scoreboard players operation #HP.RcvrPer.Copy Temp *= @s HP.Max
  scoreboard players operation #HP.RcvrPer.Copy Temp /= #100 Const
## 回復
  scoreboard players operation @s HP += #HP.RcvrPer.Copy Temp
## HPを更新
  function lib:status/hp/update/
## 一時使用ScoreHolderをリセット
  scoreboard players reset #HP.RcvrPer.Copy
