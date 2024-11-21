## 買取屋 食料部門

    tag @s add sellfoodselect

#チェスト付きトロッコに商品を置く
    #持っているものをクリアする
    item replace entity @s player.cursor with air
    #ページ数のスコア
    scoreboard players set @s ok_page 1

##リスト
    item replace entity @n[tag=sellshop] container.0 with apple[custom_model_data=1,custom_name='[{"color":"yellow","text":"アイスクリーム"}]',lore=['{"text": "50ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.1 with apple[custom_model_data=2,custom_name='[{"color":"yellow","text":"パフェ"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.2 with apple[custom_model_data=3,custom_name='[{"color":"yellow","text":"アイスケーキ"}]',lore=['{"text": "300ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.3 with apple[custom_model_data=4,custom_name='[{"color":"yellow","text":"ミックスサラダ"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.4 with apple[custom_model_data=5,custom_name='[{"color":"yellow","text":"ベジタブルジュース"}]',lore=['{"text": "300ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.5 with apple[custom_model_data=6,custom_name='[{"color":"yellow","text":"ハンバーグ"}]',lore=['{"text": "1560ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.6 with apple[custom_model_data=7,custom_name='[{"color":"yellow","text":"ステーキ"}]',lore=['{"text": "300ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.7 with apple[custom_model_data=8,custom_name='[{"color":"yellow","text":"ドーナツ"}]',lore=['{"text": "100ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.8 with apple[custom_model_data=9,custom_name='[{"color":"yellow","text":"カヌレ"}]',lore=['{"text": "200ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.9 with apple[custom_model_data=10,custom_name='[{"color":"yellow","text":"ケーキ"}]',lore=['{"text": "500ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.10 with apple[custom_model_data=11,custom_name='[{"color":"yellow","text":"キャンディ"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.11 with apple[custom_model_data=12,custom_name='[{"color":"yellow","text":"わたあめ"}]',lore=['{"text": "300ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.12 with apple[custom_model_data=13,custom_name='[{"color":"yellow","text":"ロリポップ"}]',lore=['{"text": "600ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.13 with apple[custom_model_data=14,custom_name='[{"color":"yellow","text":"いちごのマカロン"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.14 with apple[custom_model_data=15,custom_name='[{"color":"yellow","text":"ブルーベリーマカロン"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.15 with apple[custom_model_data=16,custom_name='[{"color":"yellow","text":"抹茶のマカロン"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.16 with apple[custom_model_data=17,custom_name='[{"color":"yellow","text":"バニラのマカロン"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.17 with apple[custom_model_data=18,custom_name='[{"color":"yellow","text":"グレープのマカロン"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    
    #戻る
    #item replace entity @n[tag=sellshop] container.20 with air
    item replace entity @n[tag=sellshop] container.20 with blue_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"blue","text":"戻る"}]',custom_data={ok_buy:0}] 1
    #進む
    #item replace entity @n[tag=sellshop] container.24 with air
    item replace entity @n[tag=sellshop] container.24 with orange_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"aqua","text":"次のページ"}]',custom_data={ok_buy:0}] 1
    
    #end
    item replace entity @n[tag=sellshop] container.22 with black_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"gold","text":"閉じる"}]',custom_data={ok_buy:0}] 1

