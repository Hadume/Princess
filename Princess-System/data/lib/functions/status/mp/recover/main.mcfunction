#> lib:status/mp/recover/main
# MPを回復
# @within function lib:status/mp/recover/tick

#> ScoreHolder
# @private
 #declare score_holder #MP.Max.Copy
 #declare score_holder #MP.RcvrPer.Copy
## 数値を取得
  execute store result score #MP.RcvrPer.Copy Temp run data get storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.MP.RcvrPer
## 回復値
  scoreboard players operation #MP.Max.Copy Temp = @s MP.Max
  scoreboard players operation #MP.Max.Copy Temp *= #MP.RcvrPer.Copy Temp
  scoreboard players operation #MP.Max.Copy Temp /= #100 Const
## 回復
  scoreboard players operation @s MP += #MP.Max.Copy Temp
## MPを更新
  function lib:status/mp/update
## 一時使用ScoreHolderをリセット
  scoreboard players reset #MP.Max.Copy
  scoreboard players reset #MP.RcvrPer.Copy
