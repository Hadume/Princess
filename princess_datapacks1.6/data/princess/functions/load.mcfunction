# ロード時実行

# スコアボード
	
# お知らせ
	say 再読み込み完了！

# コマンド検知
	scoreboard objectives add ti dummy
	scoreboard players set @a ti 0
	scoreboard objectives add co dummy
	scoreboard players set @a co 0
	scoreboard objectives add as dummy
	scoreboard players set @a as 0
	scoreboard objectives add reset minecraft.dropped:minecraft.heart_of_the_sea
	scoreboard players set @a reset 0
	scoreboard objectives add kill totalKillCount
	scoreboard players set @a kill 0
	scoreboard objectives add bell minecraft.custom:bell_ring
	scoreboard players set @a bell 0
	scoreboard objectives add talk minecraft.custom:minecraft.talked_to_villager
	scoreboard objectives add mura1 dummy
	scoreboard players set @a mura1 0
	scoreboard objectives add death deathCount
	scoreboard players set @a death 0
	scoreboard objectives add death1 deathCount
	scoreboard players set @a death1 0

	time set day
	gamemode adventure

# 初期スポに戻る
	#tp @a 0 0 -2

