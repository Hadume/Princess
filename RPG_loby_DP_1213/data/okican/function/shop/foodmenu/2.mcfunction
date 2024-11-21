#
#持っているものをクリアする
    item replace entity @s player.cursor with air
#2P
    scoreboard players set @s ok_page 2
    
#所持金表示
    item replace entity @n[tag=foodshop] container.4 with emerald[custom_model_data=1,custom_data={ok_buy:0}] 1
    execute as @s run item modify entity @n[tag=foodshop] container.4 okican:shop/mill
#チェスト付きトロッコに商品を置く
    #戻る
    item replace entity @n[tag=foodshop] container.20 with blue_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"blue","text":"前のページ"}]',custom_data={ok_buy:0}] 1
    ##商品(スコアに応じて)
    #ミックスサラダ300
    item replace entity @n[tag=foodshop] container.10 from block 1 -63 1 container.3
    #ベジタブルジュース600
    item replace entity @n[tag=foodshop] container.12 from block 1 -63 1 container.4
    #ハンバーグ300
    item replace entity @n[tag=foodshop] container.14 from block 1 -63 1 container.5
    #ステーキ600
    item replace entity @n[tag=foodshop] container.16 from block 1 -63 1 container.6


    #空きスロット
    #item replace entity @n[tag=foodshop] container.20 with air
    #item replace entity @n[tag=foodshop] container.10 with air
    item replace entity @n[tag=foodshop] container.11 with air
    #item replace entity @n[tag=foodshop] container.12 with air
    item replace entity @n[tag=foodshop] container.13 with air
    #item replace entity @n[tag=foodshop] container.14 with air
    item replace entity @n[tag=foodshop] container.15 with air
    #item replace entity @n[tag=foodshop] container.16 with air
    item replace entity @n[tag=foodshop] container.17 with air
    #item replace entity @n[tag=foodshop] container.24 with air
    
    #進む
    item replace entity @n[tag=foodshop] container.24 with orange_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"aqua","text":"次のページ"}]',custom_data={ok_buy:0}] 1
    
    #end
    item replace entity @n[tag=foodshop] container.22 with black_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"gold","text":"閉じる"}]',custom_data={ok_buy:0}] 1
