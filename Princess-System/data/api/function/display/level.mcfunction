#> api:display/level
# レベルを表示
# @within tag/function api:display/level

#> ScoreHolder
# @private
    #declare score_holder #Lvl

## 経験値バーをリセット
    experience set @s 0 levels

## レベルをコピー
    scoreboard players operation #Lvl Temp = @s Lvl

## レベルの数値を調整
    ### 4^3
        scoreboard players operation #Lvl Temp *= #2^24 Const
        execute if score #Lvl Temp matches -1073741824..-1 run experience add @s 192 levels
        execute if score #Lvl Temp matches ..-1073741825 run experience add @s 128 levels
        execute if score #Lvl Temp matches 1073741824.. run experience add @s 64 levels

    ### 4^2
        scoreboard players operation #Lvl Temp *= #2^2 Const
        execute if score #Lvl Temp matches -1073741824..-1 run experience add @s 48 levels
        execute if score #Lvl Temp matches ..-1073741825 run experience add @s 32 levels
        execute if score #Lvl Temp matches 1073741824.. run experience add @s 16 levels

    ### 4^1
        scoreboard players operation #Lvl Temp *= #2^2 Const
        execute if score #Lvl Temp matches -1073741824..-1 run experience add @s 12 levels
        execute if score #Lvl Temp matches ..-1073741825 run experience add @s 8 levels
        execute if score #Lvl Temp matches 1073741824.. run experience add @s 4 levels

    ### 4^0
        scoreboard players operation #Lvl Temp *= #2^2 Const
        execute if score #Lvl Temp matches -1073741824..-1 run experience add @s 3 levels
        execute if score #Lvl Temp matches ..-1073741825 run experience add @s 2 levels
        execute if score #Lvl Temp matches 1073741824.. run experience add @s 1 levels


## 一時使用ScoreHolderをリセット
    scoreboard players reset #Lvl Temp
