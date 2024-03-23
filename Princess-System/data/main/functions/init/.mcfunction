#> main:init/
# 初期化
# @within function main:load

#> Tags
# @public
 #declare tag This
#> Storage
# @public
 #declare storage main:
 #declare storage main:temp
 #declare storage entity:
 #declare storage player:
## 初期化完了
  #data modify storage main: Init set value 1b
#> Scoreboard
# @public
  scoreboard objectives add Global dummy
  scoreboard objectives add Asset dummy
  scoreboard objectives add Const dummy
  scoreboard objectives add Temp dummy
  scoreboard objectives add Lib dummy
  ### Status
    scoreboard objectives add Level dummy
    #### Exp
      scoreboard objectives add Exp dummy
      scoreboard objectives add Exp.Need dummy
    #### HP
      scoreboard objectives add HP dummy
      scoreboard objectives add HP.Max dummy
      scoreboard objectives add HP.Rcvr.Timer dummy
    #### MP
      scoreboard objectives add MP dummy
      scoreboard objectives add MP.Max dummy
      scoreboard objectives add MP.Rcvr.Timer dummy
  ### Magic
    scoreboard objectives add Duration dummy
    scoreboard objectives add CT.Click dummy
    scoreboard objectives add CT.ClickS dummy
    scoreboard objectives add CT.Offhand dummy
    scoreboard objectives add CT.OffhandS dummy
  ### 
    scoreboard objectives add AssetID dummy
#> ScoreHolder
# @public
 #declare score_holder #2
 #declare score_holder #4
 #declare score_holder #100
 #declare score_holder #200
 #declare score_holder #10000
 #declare score_holder #2^18
 #declare score_holder #2^24
  scoreboard players set #2 Const 2
  scoreboard players set #4 Const 4
  scoreboard players set #100 Const 100
  scoreboard players set #200 Const 200
  scoreboard players set #10000 Const 10000
  scoreboard players set #2^18 Const 262144
  scoreboard players set #2^24 Const 16777216
## ゲームルール
  function main:init/gamerule
#> 汎用ArmorStand
# @public
 #alias entity AS 0-0-1-0-0
  execute in overworld run summon armor_stand 0 -64 0 {UUID:[I; 0, 1, 0, 0],Marker:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b}
#> 汎用ShulkerBox
# @public
 #alias vector ShulkerBox 0 -64 0
  setblock 0 -64 0 shulker_box{Lock:"§§§"}
