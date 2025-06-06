#> asset.lib:magic/tick/spell
# 魔法のtickでの確定処理
# @within function main:tick/

#> Tags
# @private
    #declare tag Stick

## 持続時間
    scoreboard players remove @s Duration 1

## 魔法を消す
    execute if predicate asset.lib:magic/tick/extinguish run return run function asset.lib:magic/extinguish

##
    execute store result storage asset:magic ID int 1 run scoreboard players get @s ID.Asset
    function asset.lib:magic/tick/ with storage asset:magic
