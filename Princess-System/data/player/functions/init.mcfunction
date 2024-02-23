#> player:init
# プレイヤーを初期化
# @within advancement player:init

## Status
  scoreboard players set @s Level 1
  ### Exp
    scoreboard players set @s Exp 10
    scoreboard players set @s Exp.Need 10
  ### HP
    scoreboard players set @s HP 100
    scoreboard players set @s HP.Max 100
    scoreboard players set @s HP.Rcvr.Per 5
    scoreboard players set @s HP.Rcvr.Intrvl 40
  ### MP
    scoreboard players set @s MP 100
    scoreboard players set @s MP.Max 100
    scoreboard players set @s MP.Rcvr.Per 5
    scoreboard players set @s MP.Rcvr.Intrvl 40
## レベル、経験値を表示
  function api:display/exp
