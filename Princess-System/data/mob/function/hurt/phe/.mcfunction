#> mob:hurt/phe/
# プレイヤーがMOBを攻撃したら
# @within advancement mob:player_hurt_entity

##
    tag @s add this
    execute as @e[type=#mob:living,scores={idDmgFlag=..2147483647}] run function mob:hurt/phe/0
    tag @s remove this

## 進捗を剥奪
    advancement revoke @s only mob:player_hurt_entity
