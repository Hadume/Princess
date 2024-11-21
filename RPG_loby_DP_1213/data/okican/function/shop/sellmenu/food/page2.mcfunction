## 買取屋 食料部門

    tag @s add sellfoodselect

#チェスト付きトロッコに商品を置く
    #持っているものをクリアする
    item replace entity @s player.cursor with air
    #ページ数のスコア
    scoreboard players set @s ok_page 2

##リスト
    item replace entity @n[tag=sellshop] container.0 with apple[custom_model_data=19,custom_name='[{"color":"yellow","text":"いちごミルク"}]',lore=['{"text": "200ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.1 with apple[custom_model_data=20,custom_name='[{"color":"yellow","text":"ラムネ"}]',lore=['{"text": "200ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.2 with apple[custom_model_data=21,custom_name='[{"color":"yellow","text":"抹茶ラテ"}]',lore=['{"text": "200ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.3 with apple[custom_model_data=22,custom_name='[{"color":"yellow","text":"バニラオレ"}]',lore=['{"text": "200ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.4 with apple[custom_model_data=23,custom_name='[{"color":"yellow","text":"グレープソーダ"}]',lore=['{"text": "200ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.5 with apple[custom_model_data=24,custom_name='[{"color":"yellow","text":"経験値バーガー"}]',lore=['{"text": "5000ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.6 with apple[custom_model_data=25,custom_name='[{"color":"yellow","text":"カレー"}]',lore=['{"text": "250ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.7 with apple[custom_model_data=26,custom_name='[{"color":"yellow","text":"お刺身"}]',lore=['{"text": "150ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.8 with apple[custom_model_data=27,custom_name='[{"color":"yellow","text":"経験値ドリンク"}]',lore=['{"text": "500ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.9 with apple[custom_model_data=28,custom_name='[{"color":"yellow","text":"お金バーガー"}]',lore=['{"text": "10,000ミル","color": "blue"}'],custom_data={ok_buy:0}] 1
    item replace entity @n[tag=sellshop] container.10 with air
    item replace entity @n[tag=sellshop] container.11 with air
    item replace entity @n[tag=sellshop] container.12 with air
    item replace entity @n[tag=sellshop] container.13 with air
    item replace entity @n[tag=sellshop] container.14 with air
    item replace entity @n[tag=sellshop] container.15 with air
    item replace entity @n[tag=sellshop] container.16 with air
    item replace entity @n[tag=sellshop] container.17 with air
    
    #戻る
    #item replace entity @n[tag=sellshop] container.20 with air
    item replace entity @n[tag=sellshop] container.20 with blue_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"blue","text":"前のページ"}]',custom_data={ok_buy:0}] 1
    #進む
    item replace entity @n[tag=sellshop] container.24 with air
    #item replace entity @n[tag=sellshop] container.24 with orange_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"aqua","text":"次のページ"}]',custom_data={ok_buy:0}] 1
    
    #end
    item replace entity @n[tag=sellshop] container.22 with black_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"gold","text":"閉じる"}]',custom_data={ok_buy:0}] 1
