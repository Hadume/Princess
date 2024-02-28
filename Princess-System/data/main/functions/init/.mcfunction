#> main:init/
# 初期化
# @within function main:load

#> Tags
# @public
 #declare tag This
#> Storage
# @public
 #declare storage main:
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
 #declare score_holder #4
 #declare score_holder #100
 #declare score_holder #200
 #declare score_holder #2^24
  scoreboard players set #4 Const 4
  scoreboard players set #100 Const 100
  scoreboard players set #200 Const 200
  scoreboard players set #2^24 Const 16777216
## ゲームルール
  function main:init/gamerule
