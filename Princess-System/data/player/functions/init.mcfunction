#> player:init
# プレイヤーを初期化
# @within advancement player:init

## 個人ストレージを呼ぶ
  function data.player:please
## Status
  scoreboard players set @s Level 1
  ### Exp
    scoreboard players set @s Exp 10
    scoreboard players set @s Exp.Need 10
  ### HP
    scoreboard players set @s HP 100
    scoreboard players set @s HP.Max 100
    data modify storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.HP.MaxBase set value 100
    data modify storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.HP.RcvrPer set value 5
    data modify storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.HP.RcvrIntrvl set value 40
  ### MP
    scoreboard players set @s MP 100
    scoreboard players set @s MP.Max 100
    data modify storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.MP.MaxBase set value 100
    data modify storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.MP.RcvrPer set value 5
    data modify storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.MP.RcvrIntrvl set value 40
  ### Speed
    data modify storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Amount set value 100
    data modify storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Base set value 100
## レベル、経験値を表示
  function api:display/exp
## スピードの更新
  function lib:status/speed/update
