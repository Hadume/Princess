#> asset:magic/52402/cast/main
#
# @within function asset:magic/52402/cast/check.condition

#> ScoreHolder
# @private
 #declare score_holder #HP.Rcvr

## 共通処理
  function asset.lib:magic/cast/common/
## 範囲内のMobを特定
  function asset.lib:magic/action/range/
##
  execute store result score #HP.Rcvr Temp run data get storage asset:magic Amount
  execute as @e[tag=Lib.InRange] run scoreboard players operation @s HP += #HP.Rcvr Temp
  execute as @e[tag=Lib.InRange] run function lib:status/hp/update/
## 音
  execute at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2
## 一時使用ScoreHolderをリセット
  scoreboard players reset #HP.Rcvr
