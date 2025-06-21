#> asset.lib:magic/spell/init/body/
# 魔法で初期化
# @within function asset.lib:magic/spell/init/

## IDを保存
    execute store result score @s assetID run data get storage asset:magic ID

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## データを保存
    data modify storage dat: _.name set from storage asset:magic name
    execute if data storage asset:magic amount run data modify storage dat: _.amount set from storage asset:magic amount
    execute if data storage asset:magic range run data modify storage dat: _.range set from storage asset:magic range
    execute if data storage asset:magic pierce run data modify storage dat: _.pierce set from storage asset:magic pierce
    execute if data storage asset:magic targets run data modify storage dat: _.targets set from storage asset:magic targets
    execute if data storage asset:magic elements run data modify storage dat: _.elements set from storage asset:magic elements

## スコアを代入
    execute store result score @s duration run data get storage asset:magic duration

## 速度を代入
    execute if data storage asset:magic speed run function asset.lib:magic/spell/init/body/speed

## プレイヤーのIDを保存
    execute store result storage dat: _.caster int 1 run scoreboard players get #ID temp

## 向きを変更
    execute positioned as @s run tp @s ~ ~ ~ ~ ~

## NBT
    data modify entity @s {} merge value {FallDistance:-4096f,Invulnerable:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,pose:{Head:[180f,0f,0f]},Small:1b}

## IDを控えておく
    scoreboard players operation #spellID temp = @s ID

## 初期化tagを削除
    tag @s remove spellInit
