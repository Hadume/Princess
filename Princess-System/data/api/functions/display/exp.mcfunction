#> api:display/exp
# 経験値を表示
# @api

#> ScoreHolder
# @private
 #declare score_holder #Exp.Per
 #declare score_holder #Exp.Need.Copy
## 経験値バーをリセット
  experience set @s 40 levels
  experience set @s 0 points
## 経験値の達成割合
  execute store result score #Exp.Need.Copy Temp run scoreboard players operation #Exp.Per Temp = @s Exp.Need
  scoreboard players operation #Exp.Per Temp -= @s Exp
  scoreboard players operation #Exp.Per Temp *= #200 Const
  scoreboard players operation #Exp.Per Temp /= #Exp.Need.Copy Temp
## 
  ### 4^3
    scoreboard players operation #Exp.Per Temp *= #2^24 Const
    execute if score #Exp.Per Temp matches -1073741824..-1 run experience add @s 192 points
    execute if score #Exp.Per Temp matches ..-1073741825 run experience add @s 128 points
    execute if score #Exp.Per Temp matches 1073741824.. run experience add @s 64 points
  ### 4^2
    scoreboard players operation #Exp.Per Temp *= #4 Const
    execute if score #Exp.Per Temp matches -1073741824..-1 run experience add @s 48 points
    execute if score #Exp.Per Temp matches ..-1073741825 run experience add @s 32 points
    execute if score #Exp.Per Temp matches 1073741824.. run experience add @s 16 points
  ### 4^1
    scoreboard players operation #Exp.Per Temp *= #4 Const
    execute if score #Exp.Per Temp matches -1073741824..-1 run experience add @s 12 points
    execute if score #Exp.Per Temp matches ..-1073741825 run experience add @s 8 points
    execute if score #Exp.Per Temp matches 1073741824.. run experience add @s 4 points
  ### 4^0
    scoreboard players operation #Exp.Per Temp *= #4 Const
    execute if score #Exp.Per Temp matches -1073741824..-1 run experience add @s 3 points
    execute if score #Exp.Per Temp matches ..-1073741825 run experience add @s 2 points
    execute if score #Exp.Per Temp matches 1073741824.. run experience add @s 1 points
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Exp.Per
  scoreboard players reset #Exp.Need.Copy
## レベルを表示
  function api:display/level
