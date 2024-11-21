# ロード時実行
# お知らせ
	tellraw okican {"text": "game_datapacks reload!","bold": true,"color": "yellow"}

# スコアボード
	#プレイヤーID（一応）
	scoreboard objectives add ok_id dummy
	scoreboard objectives add ok_ingame custom:play_time

	##shop
	#ページ記憶
	scoreboard objectives add ok_page dummy
	#ミル（仮）あとではづめさんと合わせる
	scoreboard objectives add ok_mill dummy
	#計算用
	scoreboard objectives add ok_mill_dummy dummy
	scoreboard objectives add ok_buy dummy
	#単価
	scoreboard objectives add ok_price dummy
	#個数
	scoreboard objectives add ok_shopcount dummy

	

	#強制読み込みチャンク
    forceload add 0 0
    #シュルカーボックスの設置
    setblock 0 -64 0 shulker_box replace
    data modify storage ok_empty air set from block 0 -64 0 Items
    