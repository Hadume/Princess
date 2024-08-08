#> player:init
# プレイヤーを初期化
# @within advancement player:init

## 個人ストレージを呼ぶ
	function data.player:please
## id
	data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].id set value "player"
## 魔法
	data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic set value [{},{},{},{}]
## Status
	scoreboard players set @s Lvl 1
	### Exp
		execute store result score @s Exp.Need run scoreboard players set @s Exp 10
	### HP
		execute store result score @s HP run scoreboard players set @s HP.Max.Base 100
		scoreboard players set @s HP.Rgn.Intrvl 40
		scoreboard players set @s HP.Rgn.Per 5
	### MP
		execute store result score @s MP run scoreboard players set @s MP.Max.Base 100
		scoreboard players set @s MP.Rgn.Intrvl 40
		scoreboard players set @s MP.Rgn.Per 5
	## ATK
		scoreboard players set @s ATK.Base 1
	## DEF
		scoreboard players set @s DEF.Base 0
	### Speed
		scoreboard players set @s Speed.Base 100
	### Magic
		### MP
			scoreboard players set @s Mgc.MP.Base 0
		#### Cooltime
			scoreboard players set @s Mgc.Cooltime.Base 0
		#### Multiple
			scoreboard players set @s Mgc.Multiple.Base 0
		#### Amount
			scoreboard players set @s Mgc.Amount.Base 0
		#### Duration
			scoreboard players set @s Mgc.Duration.Base 0
		#### Pierce
			scoreboard players set @s Mgc.Pierce.Base 0
		#### Spread
			scoreboard players set @s Mgc.Spread.Base 0
		#### Range
			scoreboard players set @s Mgc.Range.Base 0
		#### Speed
			scoreboard players set @s Mgc.Speed.Base 0
## ステータスの反映
	function api:display/exp
	### ステータス
		data modify storage lib: Stats set value ["Physic","Magic"]
		function lib:stats/
