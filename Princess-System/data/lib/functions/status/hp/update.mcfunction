#> lib:status/hp/update
# HPを更新
# @public

#> ScoreHolder
# @private
 #declare score_holder #HP.Copy
 #declare score_holder #HP.Display
## 現在のHPをコピー
  scoreboard players operation #HP.Copy Temp = @s HP
## 0以下だったら0に
  execute if score #HP.Copy Temp matches ..0 run scoreboard players set @s HP 0
## 表示
  scoreboard players set #HP.Display Temp 2000
  scoreboard players operation #HP.Display Temp *= #HP.Copy Temp
  execute store result score @s ScoreToHealth run scoreboard players operation #HP.Display Temp /= @s HP.Max
## 回復
  execute if score #HP.Copy Temp < @s HP.Max run function data.player:please
  execute if score #HP.Copy Temp < @s HP.Max store result score @s HP.Rcvr.Timer run data get storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Status.HP.RcvrIntrvl
## 一時使用ScoreHolderをリセット
  scoreboard players reset #HP.Copy
  scoreboard players reset #HP.Display
