#> asset:magic/52301/cast/
# 魔法を発動
# @within function asset:magic/cast

##
    function #asset.lib:magic/action/range/

## 座標を取得
    function #api:get.nbt/pos
    data modify storage temp: 52301.Pos set from storage api: Pos

## 引き寄せる
    execute at @s as @e[tag=Lib.InRange] run function asset:magic/52301/cast/mob

## 音を鳴らす
    playsound item.trident.riptide_2 master @a ~ ~ ~ 1 1
    playsound item.trident.riptide_3 master @a ~ ~ ~ 0.25 2

## 一時使用Storageを削除
    data remove storage temp: 52301
