#> asset.lib:magic/cast/2
# クールタイムを確認
# @within function asset.lib:magic/cast/1

## クールタイム中だったら
    execute if score #ct temp matches 1.. store success storage temp: failed byte 1 run return run tellraw @s ["クールタイム中だよ。あと",{"score":{"name": "#ct","objective": "temp"},"color": "green"},"tick待ってねっ"]

## タイプを取得
    function asset.lib:magic/type/

## MPを消費
    ### データをコピー
        execute store result score #mpNeed temp run data get storage asset:magic mp
        scoreboard players operation #mp temp = @s mp

    ### 足りなかった通知
        execute if score #mp temp < #mpNeed temp store result storage temp: failed byte 1 run tellraw @s {"text": "MPが足りないにゃん♡","color": "red"}

    ###
        execute if score #mp temp >= #mpNeed temp run function asset.lib:magic/cast/3.main


## 一時使用scoreHolderをリセット
    scoreboard players reset #mpNeed temp
    scoreboard players reset #mp temp
