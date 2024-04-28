#> lib:damage/
# ダメージを計算
# @public
# @input score_holder
#   #Lib.ATK
#   #Lib.DEF

#> ScoreHolder.Temp
# @private
 #declare score_holder #DEF.Copy
 #declare score_holder #Damage
## スコアをコピー
  scoreboard players operation #DEF.Copy Temp = #Lib.DEF Lib
  scoreboard players operation #Damage Temp = #Lib.ATK Lib
## Damage = (ATK / 2) - (DEF / 4)
  scoreboard players operation #DEF.Copy Temp /= #2^2 Const
  scoreboard players operation #Damage Temp /= #2 Const
  scoreboard players operation #Damage Temp -= #DEF.Copy Temp
## HPを減らす
  scoreboard players operation @s HP -= #Damage Temp
## 体力を更新
  function lib:status/hp/update/
## ダメージ表示
  ### 表示を拡散
    data modify storage lib: Spread.Amount set value [0.1d,0.0d]
    function lib:spread/
  ### 表示用Entity
    loot spawn ^ ^ ^ loot lib:damage/motion
    execute as @e[type=item,nbt={Item:{tag:{Lib:{Damage:1b,Init:1b}}}}] run function lib:damage/display
## 回復
  execute if entity @s[type=!#mob:undead] run effect give @s instant_health 1 200 true
  execute if entity @s[type=#mob:undead] run effect give @s instant_damage 1 200 true
## 一時使用ScoreHolderをリセット
  scoreboard players reset #DEF.Copy
  scoreboard players reset #Damage
