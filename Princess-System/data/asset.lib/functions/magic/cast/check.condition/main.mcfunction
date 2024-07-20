#> asset.lib:magic/cast/check.condition/main
#
# @within function asset.lib:magic/cast/check.condition/

#> ScoreHolder
# @private
 #declare score_holder #MP.Need
 #declare score_holder #MP.Copy

## データをコピー
  execute store result score #MP.Need Temp run data get storage asset:magic Raw.MP
## MPを取得
  scoreboard players operation #MP.Copy Temp = @s MP
## 足りていたら
  execute store success storage asset:magic CanCast byte 1 if score #MP.Copy Temp >= #MP.Need Temp
## 足りなかったら
  execute unless score #MP.Copy Temp >= #MP.Need Temp run tellraw @s {"text": "MPが足りないにゃん♡","color": "red"}
  execute unless score #MP.Copy Temp >= #MP.Need Temp run playsound block.note_block.bass master @s
## 一時使用ScoreHolderをリセット
  scoreboard players reset #MP.Need
  scoreboard players reset #MP.Copy
