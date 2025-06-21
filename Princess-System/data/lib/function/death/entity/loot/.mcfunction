#> lib:death/entity/loot/
# 攻撃を与えたプレイヤーにドロップ品を渡す
# @within function lib:death/entity/

## スコアをコピー
    scoreboard players operation #exp temp = @s exp
    scoreboard players operation #money temp = @s money

## データをコピー
    data modify storage temp: attackBy set from storage dat: _.attackBy

##
    function lib:death/entity/loot/loop

## tagを削除
    execute as @a[tag=looted] run tag @s remove looted

## 一時使用scoreHolderをリセット
    scoreboard players reset #exp temp
    scoreboard players reset #money temp
    scoreboard players reset #ID temp

## 一時使用storageを削除
    data remove storage temp: attackBy
