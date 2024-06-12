#> lib:status/mp/recover/main
# MPを回復
# @within function lib:status/mp/recover/tick

#> ScoreHolder
# @private
 #declare score_holder #MP.RcvrPer.Copy

## 回復値
  scoreboard players operation #MP.RcvrPer.Copy Temp = @s MP.Rcvr.Per
  scoreboard players operation #MP.RcvrPer.Copy Temp *= @s MP.Max
  scoreboard players operation #MP.RcvrPer.Copy Temp /= #100 Const
## 回復
  scoreboard players operation @s MP += #MP.RcvrPer.Copy Temp
## MPを更新
  function lib:status/mp/update
## 一時使用ScoreHolderをリセット
  scoreboard players reset #MP.RcvrPer.Copy
