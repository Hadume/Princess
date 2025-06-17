#> mob:hurt/ehp/
# MOBがプレイヤーを攻撃したら
# @within advancement mob:entity_hurt_player

##
    tag @s add this
    execute as @e[type=#mob:living,scores={dmgFlag=..2147483647}] store result storage lib:damage input.atk int 1 run function mob:hurt/ehp/0
    tag @s remove this

## ステータスを取得
    execute store result storage lib:damage input.def int 1 run scoreboard players get @s def

## ダメージを与える
    execute if data storage lib:damage input.atk run function #lib:damage

## 進捗を剥奪
    advancement revoke @s only mob:entity_hurt_player

## 一時使用scoreHolderをリセット
    scoreboard players reset #dmgFlag temp
