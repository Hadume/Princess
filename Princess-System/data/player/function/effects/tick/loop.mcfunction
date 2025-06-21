#> player:effects/tick/loop
# 効果の常時実行
# @within function player:effects/tick/

## ループ終了
    execute unless data storage temp: Effects[] run return 1

## データを移動
    data modify storage temp: Effect set from storage temp: Effects[-1]

## 時間を減らす
    execute store result score #duration temp run data get storage temp: Effect.duration
    scoreboard players remove #duration temp 1
    execute store result storage temp: Effect.duration int 1 run scoreboard players get #duration temp

## 効果
    execute if data storage temp: {Effect:{Name:"hp"}} run function player:effects/tick/main/hp
    execute if data storage temp: {Effect:{Name:"mp"}} run function player:effects/tick/main/mp

## データを消す
    execute if score #duration temp matches ..0 run function player:effects/tick/remove.effect/

## データを返す
    execute if score #duration temp matches 1.. run data modify storage temp: UpdatedEffects append from storage temp: Effect

## データを消す
    data remove storage temp: Effects[-1]

## ループ
    function player:effects/tick/loop
