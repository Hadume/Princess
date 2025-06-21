#> asset.lib:magic/action/range/
#
# @within tag/function asset.lib:magic/action/range/

## 引数が足りなかったら
    execute unless data storage asset:magic range run return run function asset.lib:magic/action/range/argument {argument:"range"}

## 各数値取得
    data modify storage lib:range input.amount set from storage asset:magic range
    execute if data storage asset:magic targets run data modify storage lib:range input.targets set from storage asset:magic targets
    ### 対象数
        execute if data storage asset:magic pierce run data modify storage lib:range input.pierce set from storage asset:magic pierce
        execute unless data storage asset:magic pierce run data modify storage lib:range input.pierce set value 2147483647


## ダメージを受けているMOBを除外
    execute if data storage asset:magic {damage:1b} run data modify storage lib:range input.noHurtTime set value 1b

## 範囲内のMOBを特定
    function #lib:range

## ボスが特定されたら
    execute as @e[tag=libInRange,tag=boss] at @s run function asset.lib:magic/action/range/boss

## ついでに攻撃する
    execute if data storage asset:magic {damage:1b} run function asset.lib:magic/action/damage/
