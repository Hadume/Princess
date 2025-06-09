#> api:display/exp
# 経験値を表示
# @within tag/function api:display/exp

## 経験値バーをリセット
    experience set @s 40 levels
    experience set @s 0 points

## 経験値の達成割合
    scoreboard players operation #expRate temp = @s expNeed
    scoreboard players operation #expRate temp -= @s exp
    scoreboard players operation #expRate temp *= #200 const
    scoreboard players operation #expRate temp /= @s expNeed

##
    ### 4^3
        execute unless score #expRate temp matches 0 run scoreboard players operation #expRate temp *= #2^24 const
        execute if score #expRate temp matches -1073741824..-1 run experience add @s 192 points
        execute if score #expRate temp matches ..-1073741825 run experience add @s 128 points
        execute if score #expRate temp matches 1073741824.. run experience add @s 64 points

    ### 4^2
        execute unless score #expRate temp matches 0 run scoreboard players operation #expRate temp *= #2^2 const
        execute if score #expRate temp matches -1073741824..-1 run experience add @s 48 points
        execute if score #expRate temp matches ..-1073741825 run experience add @s 32 points
        execute if score #expRate temp matches 1073741824.. run experience add @s 16 points

    ### 4^1
        execute unless score #expRate temp matches 0 run scoreboard players operation #expRate temp *= #2^2 const
        execute if score #expRate temp matches -1073741824..-1 run experience add @s 12 points
        execute if score #expRate temp matches ..-1073741825 run experience add @s 8 points
        execute if score #expRate temp matches 1073741824.. run experience add @s 4 points

    ### 4^0
        execute unless score #expRate temp matches 0 run scoreboard players operation #expRate temp *= #2^2 const
        execute if score #expRate temp matches -1073741824..-1 run experience add @s 3 points
        execute if score #expRate temp matches ..-1073741825 run experience add @s 2 points
        execute if score #expRate temp matches 1073741824.. run experience add @s 1 points


## レベルを表示
    function #api:display/level

## 一時使用scoreHolderをリセット
    scoreboard players reset #expRate temp
