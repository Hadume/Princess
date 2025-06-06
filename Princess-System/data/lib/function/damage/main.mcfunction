#> lib:damage/main
# ダメージを与える
# @within function lib:damage/

## ダメージを計算
    function lib:damage/calc
    tellraw @a {"score": {"name": "#Lib.Damage", "objective": "Lib"}}

## ダメージを蓄積しておく
#scoreboard players operation #StoredDamage Lib += #Damage Temp

## HPを減らす
    execute store result storage lib: RcvrHP.Amount int -1 run scoreboard players get #Lib.Damage Lib
    function #lib:status/hp/recover

## ダメージ表示
    execute anchored eyes run loot spawn ^ ^ ^ loot lib:damage/display
    execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Lib:{Damage:1b,Init:1b}}}}}] at @s run function lib:damage/display

## 回復
    execute if entity @s[type=!#mob:undead] run effect give @s instant_health 1 200 true
    execute if entity @s[type=#mob:undead] run effect give @s instant_damage 1 200 true
