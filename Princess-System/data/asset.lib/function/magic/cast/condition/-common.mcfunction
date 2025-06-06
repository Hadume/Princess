#> asset.lib:magic/cast/condition/-common
# 魔法を発動
# @within function asset.lib:magic/cast/condition/*

#> ScoreHolder
# @within function asset.lib:magic/cast/condition/*
    #declare score_holder #CT

## クールタイム中だったら
    execute if score #CT Temp matches 1.. run tellraw @s ["クールタイム中だよ。あと",{"score":{"name": "@s","objective": "CT.Click"},"color": "green"},"tick待ってねっ"]
    execute if score #CT Temp matches 1.. run playsound block.note_block.bass master @s

## 魔法を発動
    execute unless score #CT Temp matches 1.. run function #asset:magic/cast with storage asset:magic

## 一時使用ScoreHolderをリセット
    scoreboard players reset #CT Temp
