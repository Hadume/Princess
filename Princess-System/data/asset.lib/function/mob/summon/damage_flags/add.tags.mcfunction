#> asset.lib:mob/summon/damage_flags/add.tags
# ダメージ識別用tag
# @within function asset.lib:mob/summon/damage_flags/

## 計算
    scoreboard players operation #dmgFlag temp = @s idDmgFlag
    scoreboard players operation #dmgFlag temp %= #2^15 const

## タグを与える
    ### 4^7
        scoreboard players operation #dmgFlag temp *= #2^16 const
        execute if score #dmgFlag temp matches -1073741824..-1 run tag @s add dmgFlag73
        execute if score #dmgFlag temp matches ..-1073741825 run tag @s add dmgFlag72
        execute if score #dmgFlag temp matches 1073741824.. run tag @s add dmgFlag71
        execute if score #dmgFlag temp matches 0..1073741823 run tag @s add dmgFlag70

    ### 4^6
        scoreboard players operation #dmgFlag temp *= #2^2 const
        execute if score #dmgFlag temp matches -1073741824..-1 run tag @s add dmgFlag63
        execute if score #dmgFlag temp matches ..-1073741825 run tag @s add dmgFlag62
        execute if score #dmgFlag temp matches 1073741824.. run tag @s add dmgFlag61
        execute if score #dmgFlag temp matches 0..1073741823 run tag @s add dmgFlag60

    ### 4^5
        scoreboard players operation #dmgFlag temp *= #2^2 const
        execute if score #dmgFlag temp matches -1073741824..-1 run tag @s add dmgFlag53
        execute if score #dmgFlag temp matches ..-1073741825 run tag @s add dmgFlag52
        execute if score #dmgFlag temp matches 1073741824.. run tag @s add dmgFlag51
        execute if score #dmgFlag temp matches 0..1073741823 run tag @s add dmgFlag50

    ### 4^4
        scoreboard players operation #dmgFlag temp *= #2^2 const
        execute if score #dmgFlag temp matches -1073741824..-1 run tag @s add dmgFlag43
        execute if score #dmgFlag temp matches ..-1073741825 run tag @s add dmgFlag42
        execute if score #dmgFlag temp matches 1073741824.. run tag @s add dmgFlag41
        execute if score #dmgFlag temp matches 0..1073741823 run tag @s add dmgFlag40

    ### 4^3
        scoreboard players operation #dmgFlag temp *= #2^2 const
        execute if score #dmgFlag temp matches -1073741824..-1 run tag @s add dmgFlag33
        execute if score #dmgFlag temp matches ..-1073741825 run tag @s add dmgFlag32
        execute if score #dmgFlag temp matches 1073741824.. run tag @s add dmgFlag31
        execute if score #dmgFlag temp matches 0..1073741823 run tag @s add dmgFlag30

    ### 4^2
        scoreboard players operation #dmgFlag temp *= #2^2 const
        execute if score #dmgFlag temp matches -1073741824..-1 run tag @s add dmgFlag23
        execute if score #dmgFlag temp matches ..-1073741825 run tag @s add dmgFlag22
        execute if score #dmgFlag temp matches 1073741824.. run tag @s add dmgFlag21
        execute if score #dmgFlag temp matches 0..1073741823 run tag @s add dmgFlag20

    ### 4^1
        scoreboard players operation #dmgFlag temp *= #2^2 const
        execute if score #dmgFlag temp matches -1073741824..-1 run tag @s add dmgFlag13
        execute if score #dmgFlag temp matches ..-1073741825 run tag @s add dmgFlag12
        execute if score #dmgFlag temp matches 1073741824.. run tag @s add dmgFlag11
        execute if score #dmgFlag temp matches 0..1073741823 run tag @s add dmgFlag10

    ### 4^0
        scoreboard players operation #dmgFlag temp *= #2^2 const
        execute if score #dmgFlag temp matches -1073741824..-1 run tag @s add dmgFlag03
        execute if score #dmgFlag temp matches ..-1073741825 run tag @s add dmgFlag02
        execute if score #dmgFlag temp matches 1073741824.. run tag @s add dmgFlag01
        execute if score #dmgFlag temp matches 0..1073741823 run tag @s add dmgFlag00


## 一時使用scoreHolderをリセット
    scoreboard players reset #dmgFlag temp
