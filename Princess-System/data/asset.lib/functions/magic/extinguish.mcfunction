#> asset.lib:magic/extinguish
# 魔法を消す
# @input as entity
# @within function
#   asset.lib:magic/tick/
#   asset.lib:magic/action/range/spell/

#> ScoreHolder
# @private
 #declare score_holder #ID.Copy

## IDをコピー
  scoreboard players operation #ID.Copy Temp = @s EntityID
## 自分と同じIDのblock_displayを消す
  execute as @e[type=block_display,tag=Spell.Display] if score @s EntityID = #ID.Copy Temp run kill @s
##
  kill @s
## 一時使用ScoreHolderをリセット
  scoreboard players reset #ID.Copy
