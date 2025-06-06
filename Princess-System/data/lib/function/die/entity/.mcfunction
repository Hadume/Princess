#> lib:die/entity/
#
# @within function lib:die/

#> ScoreHolder.Temp
# @within function lib:die/entity/**
    #declare score_holder #Exp
    #declare score_holder #Money
    #declare score_holder #ID
#> Tags.Temp
# @within function lib:die/entity/**
    #declare tag Looted

## データ変更
    data remove entity @s CustomName
    data modify entity @s CustomNameVisible set value 0b
    data modify entity @s PersistenceRequired set value 0b

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## アイテムをドロップ
    execute if data storage dat: _.Drop run function lib:die/entity/drop/

## 攻撃を与えたプレイヤーにドロップ品を渡す
    execute if data storage dat: _.AttackBy run function lib:die/entity/loot/

## Assetごとの処理
    function #asset:mob/death

## kill
    execute if entity @s[tag=!Boss] run kill @s
