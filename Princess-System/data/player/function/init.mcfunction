#> player:init
# プレイヤーを初期化
# @within advancement player:init

## 個人ストレージを呼ぶ
	function #api:e_dat/please

## id
	data modify storage dat: _.id set value "player"

## 魔法
	data modify storage dat: _.Magic set value [{},{},{},{}]

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
		scoreboard players set @s ATK.Flamme.Base 0
		scoreboard players set @s ATK.Wasser.Base 0
		scoreboard players set @s ATK.Wind.Base 0
		scoreboard players set @s ATK.Licht.Base 0
		scoreboard players set @s ATK.Dunkel.Base 0

	## DEF
		scoreboard players set @s DEF.Base 0
		scoreboard players set @s DEF.Flamme.Base 0
		scoreboard players set @s DEF.Wasser.Base 0
		scoreboard players set @s DEF.Wind.Base 0
		scoreboard players set @s DEF.Licht.Base 0
		scoreboard players set @s DEF.Dunkel.Base 0

	### Speed
		scoreboard players set @s Speed.Base 100

	### Magic
		scoreboard players set @s Mgc.MP.Base 0
		scoreboard players set @s Mgc.Cooltime.Base 0
		scoreboard players set @s Mgc.Multiple.Base 0
		scoreboard players set @s Mgc.Amount.Base 0
		scoreboard players set @s Mgc.Duration.Base 0
		scoreboard players set @s Mgc.Pierce.Base 0
		scoreboard players set @s Mgc.Spread.Base 0
		scoreboard players set @s Mgc.Range.Base 0
		scoreboard players set @s Mgc.Speed.Base 0


## インベントリUI
	function menu:pages/menu/open

## ステータスの反映
	function #api:display/exp
	### ステータス
		data modify storage lib: Stats set value ["Physic","Magic","Element"]
		function #lib:stats
