#> lib:spread/
# MOBを拡散させる
# @within tag/function lib:spread

## 引数の確認
    execute unless data storage lib:spread input.amount run return run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"lib:spread : storage[lib:spread input.amount]"]

## posを取得
    execute if data storage lib:spread input.at run data modify storage temp:lib spread.at set from storage lib:spread input.at
    execute unless data storage lib:spread input.at run function #api:get.nbt/pos
    execute unless data storage lib:spread input.at run data modify storage temp:lib spread.at set from storage api:nbt pos.data

## 拡散値を取得
    ### XZ
        execute if data storage lib:spread input.amount[0] store result score #spreadXZ1 temp run data get storage lib:spread input.amount[0] 100
        execute unless data storage lib:spread input.amount[0] store result score #spreadXZ1 temp run data get storage lib:spread input.amount 100
        scoreboard players operation #spreadXZ2 temp = #spreadXZ1 temp
        scoreboard players operation #spreadXZ1 temp *= #2 const
        execute if score #spreadXZ1 temp matches 0 run scoreboard players set #spreadXZ1 temp 1

    ### Y
        execute if data storage lib:spread input.amount[1] store result score #spreadY1 temp run data get storage lib:spread input.amount[1] 100
        execute unless data storage lib:spread input.amount[1] store result score #spreadY1 temp run data get storage lib:spread input.amount 100
        scoreboard players operation #spreadY2 temp = #spreadY1 temp
        scoreboard players operation #spreadY1 temp *= #2 const
        execute if score #spreadY1 temp matches 0 run scoreboard players set #spreadY1 temp 1


## データを用意
    data modify storage temp:lib spread.pos set value [0.0d,0.0d,0.0d]

## 座標を計算
    execute store result score #posX temp run data get storage temp:lib spread.at[0] 100
    execute store result score #posY temp run data get storage temp:lib spread.at[1] 100
    execute store result score #posZ temp run data get storage temp:lib spread.at[2] 100
    ### X
        execute store result score #spread temp run random value 1..
        scoreboard players operation #spread temp %= #spreadXZ1 temp
        scoreboard players operation #spread temp -= #spreadXZ2 temp
        execute store result storage temp:lib spread.pos[0] double 0.01 run scoreboard players operation #posX temp += #spread temp

    ### Z
        execute store result score #spread temp run random value 1..
        scoreboard players operation #spread temp %= #spreadXZ1 temp
        scoreboard players operation #spread temp -= #spreadXZ2 temp
        execute store result storage temp:lib spread.pos[2] double 0.01 run scoreboard players operation #posZ temp += #spread temp

    ### Y
        execute store result score #spread temp run random value 1..
        scoreboard players operation #spread temp %= #spreadY1 temp
        scoreboard players operation #spread temp -= #spreadY2 temp
        execute store result storage temp:lib spread.pos[1] double 0.01 run scoreboard players operation #posY temp += #spread temp


## 座標を代入
    execute if entity @s[type=!player] run data modify entity @s Pos set from storage temp:lib spread.pos

## 地面に設置させる
    execute if data storage lib:spread input{onGround:1b} run function lib:spread/on_ground/

## 引数を削除
    data remove storage lib:spread input

## 一時使用scoreHolderをリセット
    scoreboard players reset #spreadXZ1 temp
    scoreboard players reset #spreadXZ2 temp
    scoreboard players reset #spreadY1 temp
    scoreboard players reset #spreadY2 temp
    scoreboard players reset #spread temp
    scoreboard players reset #posX temp
    scoreboard players reset #posY temp
    scoreboard players reset #posZ temp

## 一時使用storageを削除
    data remove storage temp:lib spread
