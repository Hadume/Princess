#持っているものをクリアする
    item replace entity @s player.cursor with air
#5P
    scoreboard players set @s ok_page 5

#所持金表示
    item replace entity @n[tag=foodshop] container.4 with emerald[custom_model_data=1,custom_data={ok_buy:0}] 1
    execute as @s run item modify entity @n[tag=foodshop] container.4 okican:shop/mill
#チェスト付きトロッコに商品を置く
    #戻る
    item replace entity @n[tag=foodshop] container.20 with blue_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"blue","text":"前のページ"}]',custom_data={ok_buy:0}] 1
    ##商品(スコアに応じて)
    #いちごのマカロン300
    item replace entity @n[tag=foodshop] container.10 from block 1 -63 1 container.13
    #ブルーベリーのマカロン300
    item replace entity @n[tag=foodshop] container.11 from block 1 -63 1 container.14
    #抹茶のマカロン300
    item replace entity @n[tag=foodshop] container.12 from block 1 -63 1 container.15
    #バニラのマカロン300
    item replace entity @n[tag=foodshop] container.13 from block 1 -63 1 container.16
    #グレープのマカロン300
    item replace entity @n[tag=foodshop] container.14 from block 1 -63 1 container.17

    #空きスロット
    #item replace entity @n[tag=foodshop] container.20 with air
    #item replace entity @n[tag=foodshop] container.10 with air
    #item replace entity @n[tag=foodshop] container.11 with air
    #item replace entity @n[tag=foodshop] container.12 with air
    #item replace entity @n[tag=foodshop] container.13 with air
    #item replace entity @n[tag=foodshop] container.14 with air
    item replace entity @n[tag=foodshop] container.15 with air
    item replace entity @n[tag=foodshop] container.16 with air
    item replace entity @n[tag=foodshop] container.17 with air
    #item replace entity @n[tag=foodshop] container.24 with air
    
    #進む
    item replace entity @n[tag=foodshop] container.24 with orange_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"aqua","text":"次のページ"}]',custom_data={ok_buy:0}] 1
    
    #end
    item replace entity @n[tag=foodshop] container.22 with black_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"gold","text":"閉じる"}]',custom_data={ok_buy:0}] 1
