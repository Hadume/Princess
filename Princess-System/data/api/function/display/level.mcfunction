#> api:display/level
# レベルを表示
# @within tag/function api:display/level

## 経験値バーをリセット
    experience set @s 0 levels

## レベルをコピー
    scoreboard players operation #lvl temp = @s lvl

## レベルの数値を調整
    ### 4^3
        scoreboard players operation #lvl temp *= #2^24 const
        execute if score #lvl temp matches -1073741824..-1 run experience add @s 192 levels
        execute if score #lvl temp matches ..-1073741825 run experience add @s 128 levels
        execute if score #lvl temp matches 1073741824.. run experience add @s 64 levels

    ### 4^2
        scoreboard players operation #lvl temp *= #2^2 const
        execute if score #lvl temp matches -1073741824..-1 run experience add @s 48 levels
        execute if score #lvl temp matches ..-1073741825 run experience add @s 32 levels
        execute if score #lvl temp matches 1073741824.. run experience add @s 16 levels

    ### 4^1
        scoreboard players operation #lvl temp *= #2^2 const
        execute if score #lvl temp matches -1073741824..-1 run experience add @s 12 levels
        execute if score #lvl temp matches ..-1073741825 run experience add @s 8 levels
        execute if score #lvl temp matches 1073741824.. run experience add @s 4 levels

    ### 4^0
        scoreboard players operation #lvl temp *= #2^2 const
        execute if score #lvl temp matches -1073741824..-1 run experience add @s 3 levels
        execute if score #lvl temp matches ..-1073741825 run experience add @s 2 levels
        execute if score #lvl temp matches 1073741824.. run experience add @s 1 levels


## 一時使用scoreHolderをリセット
    scoreboard players reset #lvl temp
