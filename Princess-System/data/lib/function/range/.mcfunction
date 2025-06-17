#> lib:range/
# 範囲内にいるtargetを取得する
# @within tag/function lib:range

## 引数の確認
    execute unless data storage lib:range input.amount run return run function lib:_common {function:"lib:range ",argument:"input.amount"}
    execute unless data storage lib:range input.pierce run return run function lib:_common {function:"lib:range ",argument:"input.pierce"}

## データを用意
    execute store result score #range temp run data get storage lib:range input.amount 1000
    execute store result score #pierce temp run data get storage lib:range input.pierce
    execute if data storage lib:range input.targets run data modify storage temp: targets set from storage lib:range input.targets
    ### 範囲^2
        scoreboard players operation #range temp *= #range temp

    ### 対象がいなかったら、全員を対象に
        execute unless data storage temp: targets run data modify storage temp: targets set value ["enemy","player"]


## 座標取得
    function #api:get.nbt/pos
    data modify storage temp: at set from storage api:nbt pos.data

## ダメージを受けているMOBを除外
    execute unless data storage lib:range input{noHurtTime:true} run data modify storage lib:range input.noHurtTime set value false

## 特定されるだろうMObを指定
    execute if data storage lib:range input{targets:["enemy"],noHurtTime:false} as @e[type=#mob:living,tag=enemy,distance=..16] run tag @s add libTempRange
    execute if data storage lib:range input{targets:["Player"],noHurtTime:false} as @a[distance=..16] run tag @s add libTempRange
    execute if data storage lib:range input{targets:["enemy"],noHurtTime:true} as @e[type=#mob:living,tag=enemy,nbt={HurtTime:0s},distance=..16] run tag @s add libTempRange
    execute if data storage lib:range input{targets:["Player"],noHurtTime:true} as @a[nbt={HurtTime:0s},distance=..16] run tag @s add libTempRange

## 攻撃する対象を特定
    execute as @e[tag=libTempRange,sort=nearest,limit=1] at @s run function lib:range/loop/

## 仮tagを削除
    execute as @e[tag=libTempRange] run tag @s remove libTempRange

## 対象数数を保存
    execute if score #pierce temp matches 1.. store result storage lib:range output.pierce int 1 run scoreboard players get #pierce temp
    execute if score #pierce temp matches ..0 run data modify storage lib:range output.pierce set value 0

## 一時使用scoreHolderをリセット
    scoreboard players reset #range temp
    scoreboard players reset #pierce temp
    scoreboard players reset #posX1 temp
    scoreboard players reset #posY1 temp
    scoreboard players reset #posZ1 temp
    scoreboard players reset #posX2 temp
    scoreboard players reset #posY2 temp
    scoreboard players reset #posZ2 temp
    scoreboard players reset #posX3 temp
    scoreboard players reset #posY3 temp
    scoreboard players reset #posZ3 temp
    scoreboard players reset #sizeX temp
    scoreboard players reset #sizeY temp

## 一時使用storageを削除
    data remove storage temp: targets
    data remove storage temp: at

## ライブラリ共通処理
    function lib:_common {function:"lib:range ",argument:"null"}
