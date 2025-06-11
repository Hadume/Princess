#> lib:damage/
#
# @within tag/function lib:damage

## 引数が足りなかったら
    execute unless data storage lib:damage input.atk run return run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"lib:damage : storage[lib:damage atk]"]
    execute unless data storage lib:damage input.def run return run tellraw @a [{"storage":"main:","nbt":"tell.ARGUMENT_ERROR"},"lib:damage : storage[lib:damage def]"]

## 値を取得
    execute store result score #atk temp run data get storage lib:damage input.atk
    execute store result score #def temp run data get storage lib:damage input.def

## ダメージ計算
    ### (atk / 2) - (def / 4)
        scoreboard players operation #atk temp /= #2 const
        scoreboard players operation #def temp /= #4 const
        scoreboard players operation #atk temp -= #def temp

    ### 0以下にならないように補正
        execute if score #atk temp matches ..-1 run scoreboard players set #atk temp 0


## 数値を保管
    execute store result storage lib:damage output.damage int 1 run scoreboard players get #atk temp

## HPを減らす
    execute store result storage lib:status input.hp.rcvr int -1 run data get storage lib:damage output.damage
    function #lib:status/hp/recover

## ダメージ表示
    execute anchored eyes run loot spawn ^ ^ ^ loot lib:damage/display
    execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{lib:{damage:1b,new:1b}}}}}] at @s run function lib:damage/display/

## 回復
    execute if entity @s[type=!#mob:undead] run effect give @s instant_health 1 200 true
    execute if entity @s[type=#mob:undead] run effect give @s instant_damage 1 200 true

## 引数を削除
    data remove storage lib:damage input

## 一時使用scoreHolderをリセット
    scoreboard players reset #atk temp
    scoreboard players reset #def temp
