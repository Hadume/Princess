#> lib:status/mp/update
# MPを更新
# @public

#> ScoreHolder
# @private
 #declare score_holder #MP.Copy
## 現在のMPをコピー
  scoreboard players operation #MP.Copy Temp = @s MP
## 0以下だったら0に
  execute if score #MP.Copy Temp matches ..0 run scoreboard players set @s MP 0
## 回復
  execute if score #MP.Copy Temp < @s MP.Max run function data.player:please
  execute if score #MP.Copy Temp < @s MP.Max store result score @s MP.Rcvr.Timer run data get storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.MP.RcvrIntrvl
## 一時使用ScoreHolderをリセット
  scoreboard players reset #MP.Copy
