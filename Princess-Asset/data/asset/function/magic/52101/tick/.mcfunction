#> asset:magic/52101/tick/
#
# @within function asset:magic/tick

## ダメージ
    data modify storage asset:magic Damage set value 1b
    function #asset.lib:magic/action/range/spell

## パーティクル
    particle flame ~ ~ ~ 0.125 0.125 0.125 0 3 force
