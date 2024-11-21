#> main:init/
# 初期化
# @within function main:load

#> Tags
# @public
	#declare tag This
#> ScoreHolder
# @public
	#declare score_holder #Rand
#> Storage
# @public
	#declare storage main:
	#declare storage main:temp

## 初期化完了
#data modify storage main: Init set value 1b

#> Scoreboard.Public
# @public
	scoreboard objectives add Global dummy
	scoreboard objectives add Asset dummy
	scoreboard objectives add Const dummy
	scoreboard objectives add Temp dummy
	scoreboard objectives add Lib dummy
	### Custom
		scoreboard objectives add LeaveGame custom:leave_game

	### Status
		scoreboard objectives add Lvl dummy
		scoreboard objectives add Money dummy
		#### Exp
			scoreboard objectives add Exp dummy
			scoreboard objectives add Exp.Need dummy

		#### HP
			scoreboard objectives add HP dummy
			scoreboard objectives add HP.Max dummy
			scoreboard objectives add HP.Max.Base dummy
			scoreboard objectives add HP.Rgn.Intrvl dummy
			scoreboard objectives add HP.Rgn.Timer dummy
			scoreboard objectives add HP.Rgn.Per dummy

		#### MP
			scoreboard objectives add MP dummy
			scoreboard objectives add MP.Max dummy
			scoreboard objectives add MP.Max.Base dummy
			scoreboard objectives add MP.Rgn.Intrvl dummy
			scoreboard objectives add MP.Rgn.Timer dummy
			scoreboard objectives add MP.Rgn.Per dummy

		#### ATK
			scoreboard objectives add ATK dummy
			scoreboard objectives add ATK.Base dummy
			scoreboard objectives add ATK.Flamme dummy
			scoreboard objectives add ATK.Flamme.Base dummy
			scoreboard objectives add ATK.Wasser dummy
			scoreboard objectives add ATK.Wasser.Base dummy
			scoreboard objectives add ATK.Wind dummy
			scoreboard objectives add ATK.Wind.Base dummy
			scoreboard objectives add ATK.Licht dummy
			scoreboard objectives add ATK.Licht.Base dummy
			scoreboard objectives add ATK.Dunkel dummy
			scoreboard objectives add ATK.Dunkel.Base dummy

		#### DEF
			scoreboard objectives add DEF dummy
			scoreboard objectives add DEF.Base dummy
			scoreboard objectives add DEF.Flamme dummy
			scoreboard objectives add DEF.Flamme.Base dummy
			scoreboard objectives add DEF.Wasser dummy
			scoreboard objectives add DEF.Wasser.Base dummy
			scoreboard objectives add DEF.Wind dummy
			scoreboard objectives add DEF.Wind.Base dummy
			scoreboard objectives add DEF.Licht dummy
			scoreboard objectives add DEF.Licht.Base dummy
			scoreboard objectives add DEF.Dunkel dummy
			scoreboard objectives add DEF.Dunkel.Base dummy

		#### Speed
			scoreboard objectives add Speed dummy
			scoreboard objectives add Speed.Base dummy


	### Magic
		scoreboard objectives add Duration dummy
		scoreboard objectives add CT.Click dummy
		scoreboard objectives add CT.ClickS dummy
		scoreboard objectives add CT.Offhand dummy
		scoreboard objectives add CT.OffhandS dummy
		#### Types
			##### MP
				scoreboard objectives add Mgc.MP dummy
				scoreboard objectives add Mgc.MP.Base dummy

			##### Cooltime
				scoreboard objectives add Mgc.Cooltime dummy
				scoreboard objectives add Mgc.Cooltime.Base dummy

			##### Multiple
				scoreboard objectives add Mgc.Multiple dummy
				scoreboard objectives add Mgc.Multiple.Base dummy

			##### Amount
				scoreboard objectives add Mgc.Amount dummy
				scoreboard objectives add Mgc.Amount.Base dummy

			##### Duration
				scoreboard objectives add Mgc.Duration dummy
				scoreboard objectives add Mgc.Duration.Base dummy

			##### Pierce
				scoreboard objectives add Mgc.Pierce dummy
				scoreboard objectives add Mgc.Pierce.Base dummy

			##### Spread
				scoreboard objectives add Mgc.Spread dummy
				scoreboard objectives add Mgc.Spread.Base dummy

			##### Range
				scoreboard objectives add Mgc.Range dummy
				scoreboard objectives add Mgc.Range.Base dummy

			##### Speed
				scoreboard objectives add Mgc.Speed dummy
				scoreboard objectives add Mgc.Speed.Base dummy



	### Menu
		scoreboard objectives add Menu dummy
		scoreboard objectives add Trade.Action trigger
		scoreboard objectives add Trade.With dummy
		scoreboard objectives add Trade.DecideTimer dummy

	###
		scoreboard objectives add 4tickInterval dummy
		scoreboard objectives add Spawner.Delay dummy
		scoreboard objectives add ID.Asset dummy
		scoreboard objectives add ID.DmgFlag dummy


#> ScoreHolder
# @public
	#declare score_holder #-1
	#declare score_holder #2
	#declare score_holder #4
	#declare score_holder #10
	#declare score_holder #51
	#declare score_holder #100
	#declare score_holder #200
	#declare score_holder #1000
	#declare score_holder #10000
	#declare score_holder #18000
	#declare score_holder #2^2
	#declare score_holder #2^15
	#declare score_holder #2^16
	#declare score_holder #2^18
	#declare score_holder #2^24
		scoreboard players set #-1 Const -1
	scoreboard players set #2 Const 2
	scoreboard players set #4 Const 4
	scoreboard players set #10 Const 10
	scoreboard players set #21 Const 21
	scoreboard players set #51 Const 51
	scoreboard players set #100 Const 100
	scoreboard players set #200 Const 200
	scoreboard players set #1000 Const 1000
	scoreboard players set #10000 Const 10000
	scoreboard players set #18000 Const 18000
	scoreboard players set #2^2 Const 4
	scoreboard players set #2^15 Const 32768
	scoreboard players set #2^16 Const 65536
	scoreboard players set #2^18 Const 262144
	scoreboard players set #2^24 Const 16777216
	data modify storage main: Const.Root2 set value 1.41421356237d
	data modify storage main: Const.Pi set value 3.14159265359d

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

## エラーログ
	data modify storage main: Tell.Error set value "§c[Error] §o§n"
	data modify storage main: Tell.ArgumentError set value "§c[Error] 引数が足りません: §o§n"

## 各システムの初期化
	function lib:stats/load
	function menu:load

## Assetの初期化
	function #asset:magic/load
