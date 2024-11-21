#function okican:shop/foodmenu/1

#ショッピング中のタグ
    tag @s add shopping_open
    advancement revoke @s only okican:shop/food

#所持金表示
    item replace entity @n[tag=foodshop] container.4 with emerald[custom_model_data=1,custom_data={ok_buy:0}] 1
    execute as @s run item modify entity @n[tag=foodshop] container.4 okican:shop/mill
    #tellraw @s {"score": {"name": "@s","objective": "ok_mill"}}


#チェスト付きトロッコに商品を置く
    #持っているものをクリアする
    item replace entity @s player.cursor with air
    #ページ数のスコア
    scoreboard players set @s ok_page 1
    #戻る
    ##商品(スコアに応じて)
    #アイスクリーム100
    item replace entity @n[tag=foodshop] container.10 from block 1 -63 1 container.0
    #パフェ300
    item replace entity @n[tag=foodshop] container.13 from block 1 -63 1 container.1
    #アイスケーキ600
    item replace entity @n[tag=foodshop] container.16 from block 1 -63 1 container.2
    #空きスロット
    item replace entity @n[tag=foodshop] container.20 with air
    #item replace entity @n[tag=foodshop] container.10 with air
    item replace entity @n[tag=foodshop] container.11 with air
    item replace entity @n[tag=foodshop] container.12 with air
    #item replace entity @n[tag=foodshop] container.13 with air
    item replace entity @n[tag=foodshop] container.14 with air
    item replace entity @n[tag=foodshop] container.15 with air
    #item replace entity @n[tag=foodshop] container.16 with air
    item replace entity @n[tag=foodshop] container.17 with air
    #item replace entity @n[tag=foodshop] container.24 with air

    #進む
    item replace entity @n[tag=foodshop] container.24 with orange_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"aqua","text":"次のページ"}]',custom_data={ok_buy:0}] 1
    
    #end
    item replace entity @n[tag=foodshop] container.22 with black_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"gold","text":"閉じる"}]',custom_data={ok_buy:0}] 1

    #function okican:shop/foodmenu/1
    