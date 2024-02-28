#> asset.lib:magic/cast/check.mp
# MPが足りているか確認
# @within asset:magic/*/cast/check.mp

#> ScoreHolder
# @private
 #declare score_holder #MP.Copy
## MPを取得
  scoreboard players operation #MP.Copy Temp = @s MP
## 足りていたら
  execute store success storage asset: CanCast byte 1 if score #MP.Copy Temp >= #MagicMP Asset
## 足りなかったら
  execute unless score #MP.Copy Temp >= #MagicMP Asset run tellraw @s {"text": "MPが足りないにゃん♡","color": "red"}
  #execute unless score @s MP >= #MagicMP Asset run playsound
## 一時使用ScoreHolderをリセット
  scoreboard players reset #MP.Copy
