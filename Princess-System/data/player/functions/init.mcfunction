#> player:init
# プレイヤーを初期化
# @within advancement player:init

## Status
  scoreboard players set @s Lvl 1
  ### Exp
    execute store result score @s Exp.Need run scoreboard players set @s Exp 10
  ### HP
    execute store result score @s HP run scoreboard players set @s HP.Max.Base 100
    scoreboard players set @s HP.Rcvr.Intrvl 40
    scoreboard players set @s HP.Rcvr.Per 5
  ### MP
    execute store result score @s MP run scoreboard players set @s MP.Max.Base 100
    scoreboard players set @s MP.Rcvr.Intrvl 40
    scoreboard players set @s MP.Rcvr.Per 5
  ### Speed
    scoreboard players set @s Speed.Base 100
## ステータスの反映
  function #lib:stats
  function api:display/exp
