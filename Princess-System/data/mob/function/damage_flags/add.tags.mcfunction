#> mob:damage_flags/add.tags
# ダメージ識別用tag
# @within function mob:damage_flags/

## 計算
    scoreboard players operation #DmgFlag Temp = @s ID.DmgFlag
    scoreboard players operation #DmgFlag Temp %= #2^15 Const

## タグを与える
    ### 4^7
        scoreboard players operation #DmgFlag Temp *= #2^16 Const
        execute if score #DmgFlag Temp matches -1073741824..-1 run tag @s add DmgFlag.7.3
        execute if score #DmgFlag Temp matches ..-1073741825 run tag @s add DmgFlag.7.2
        execute if score #DmgFlag Temp matches 1073741824.. run tag @s add DmgFlag.7.1
        execute if score #DmgFlag Temp matches 0..1073741823 run tag @s add DmgFlag.7.0

    ### 4^6
        scoreboard players operation #DmgFlag Temp *= #2^2 Const
        execute if score #DmgFlag Temp matches -1073741824..-1 run tag @s add DmgFlag.6.3
        execute if score #DmgFlag Temp matches ..-1073741825 run tag @s add DmgFlag.6.2
        execute if score #DmgFlag Temp matches 1073741824.. run tag @s add DmgFlag.6.1
        execute if score #DmgFlag Temp matches 0..1073741823 run tag @s add DmgFlag.6.0

    ### 4^5
        scoreboard players operation #DmgFlag Temp *= #2^2 Const
        execute if score #DmgFlag Temp matches -1073741824..-1 run tag @s add DmgFlag.5.3
        execute if score #DmgFlag Temp matches ..-1073741825 run tag @s add DmgFlag.5.2
        execute if score #DmgFlag Temp matches 1073741824.. run tag @s add DmgFlag.5.1
        execute if score #DmgFlag Temp matches 0..1073741823 run tag @s add DmgFlag.5.0

    ### 4^4
        scoreboard players operation #DmgFlag Temp *= #2^2 Const
        execute if score #DmgFlag Temp matches -1073741824..-1 run tag @s add DmgFlag.4.3
        execute if score #DmgFlag Temp matches ..-1073741825 run tag @s add DmgFlag.4.2
        execute if score #DmgFlag Temp matches 1073741824.. run tag @s add DmgFlag.4.1
        execute if score #DmgFlag Temp matches 0..1073741823 run tag @s add DmgFlag.4.0

    ### 4^3
        scoreboard players operation #DmgFlag Temp *= #2^2 Const
        execute if score #DmgFlag Temp matches -1073741824..-1 run tag @s add DmgFlag.3.3
        execute if score #DmgFlag Temp matches ..-1073741825 run tag @s add DmgFlag.3.2
        execute if score #DmgFlag Temp matches 1073741824.. run tag @s add DmgFlag.3.1
        execute if score #DmgFlag Temp matches 0..1073741823 run tag @s add DmgFlag.3.0

    ### 4^2
        scoreboard players operation #DmgFlag Temp *= #2^2 Const
        execute if score #DmgFlag Temp matches -1073741824..-1 run tag @s add DmgFlag.2.3
        execute if score #DmgFlag Temp matches ..-1073741825 run tag @s add DmgFlag.2.2
        execute if score #DmgFlag Temp matches 1073741824.. run tag @s add DmgFlag.2.1
        execute if score #DmgFlag Temp matches 0..1073741823 run tag @s add DmgFlag.2.0

    ### 4^1
        scoreboard players operation #DmgFlag Temp *= #2^2 Const
        execute if score #DmgFlag Temp matches -1073741824..-1 run tag @s add DmgFlag.1.3
        execute if score #DmgFlag Temp matches ..-1073741825 run tag @s add DmgFlag.1.2
        execute if score #DmgFlag Temp matches 1073741824.. run tag @s add DmgFlag.1.1
        execute if score #DmgFlag Temp matches 0..1073741823 run tag @s add DmgFlag.1.0

    ### 4^0
        scoreboard players operation #DmgFlag Temp *= #2^2 Const
        execute if score #DmgFlag Temp matches -1073741824..-1 run tag @s add DmgFlag.0.3
        execute if score #DmgFlag Temp matches ..-1073741825 run tag @s add DmgFlag.0.2
        execute if score #DmgFlag Temp matches 1073741824.. run tag @s add DmgFlag.0.1
        execute if score #DmgFlag Temp matches 0..1073741823 run tag @s add DmgFlag.0.0


## 一時使用ScoreHolderをリセット
    scoreboard players reset #DmgFlag Temp
