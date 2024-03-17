#> lib:damage/
# 
# @public
# @input score_holder
#   #Lib.ATK
#   #Lib.DEF
# @output score_holder #Lib.Dmg

## Damage = (ATK / 2) - (DEF / 4)
  scoreboard players operation #Lib.ATK Lib /= #2 Const
  scoreboard players operation #Lib.DEF Lib /= #4 Const
  scoreboard players operation #Lib.ATK Lib -= #Lib.DEF Lib
  scoreboard players operation #Lib.Damage Lib = #Lib.ATK Lib
