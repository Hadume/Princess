#> lib:death/entity/
#
# @within function lib:death/

## データ変更
    data remove entity @s CustomName
    data modify entity @s CustomNameVisible set value 0b
    data modify entity @s PersistenceRequired set value 0b

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## アイテムをドロップ
    execute if data storage dat: _.Drop run function lib:death/entity/drop/

## 攻撃を与えたプレイヤーにドロップ品を渡す
    execute if data storage dat: _.attackBy run function lib:death/entity/loot/

## Assetごとの処理
    function #asset:mob/death

## kill
    execute if entity @s[tag=!boss] run kill @s
