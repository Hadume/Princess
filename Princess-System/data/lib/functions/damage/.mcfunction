#> lib:damage/
# ダメージを計算
# @public
# @input score_holder
#   #Lib.ATK
#   #Lib.DEF
# @output score_holder #Lib.Dmg

#> ScoreHolder.Temp
# @private
 #declare score_holder #ATK.Copy
 #declare score_holder #DEF.Copy
## スコアをコピー
  scoreboard players operation #ATK.Copy Temp = #Lib.ATK Lib
  scoreboard players operation #DEF.Copy Temp = #Lib.DEF Lib
## Damage = (ATK / 2) - (DEF / 4)
  scoreboard players operation #ATK.Copy Temp /= #2 Const
  scoreboard players operation #DEF.Copy Temp /= #2^2 Const
  scoreboard players operation #ATK.Copy Temp -= #DEF.Copy Temp
## HPを減らす
  scoreboard players operation @s HP -= #Lib.Damage Lib
## 体力を更新
  function lib:status/hp/update
## 回復
  execute if entity @s[type=!#mob:undead] run effect give @s instant_health 1 200 true
  execute if entity @s[type=#mob:undead] run effect give @s instant_damage 1 200 true
## 一時使用ScoreHolderをリセット
  scoreboard players reset #ATK.Copy
  scoreboard players reset #DEF.Copy
