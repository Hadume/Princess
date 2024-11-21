## アイスクリーム
#持っているものをクリアする
    #item replace entity @s player.cursor with air

##合計金額をセット
    scoreboard players set @s ok_buy 50
    
## タグ
    tag @s add sellselect
    tag @s add shopselect

## アイテム配置
    item replace entity @n[tag=sellshop] container.10 with air
    item replace entity @n[tag=sellshop] container.11 with air
    item replace entity @n[tag=sellshop] container.12 with air
    item replace entity @n[tag=sellshop] container.15 with air
    item replace entity @n[tag=sellshop] container.16 with air
    item replace entity @n[tag=sellshop] container.20 with air
    item replace entity @n[tag=sellshop] container.24 with air

    #商品
    item replace entity @n[tag=sellshop] container.13 from entity @s player.cursor
    #戻る
    item replace entity @n[tag=sellshop] container.20 with blue_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"blue","text":"戻る"}]',custom_data={ok_buy:0}] 1
    #-1
    #item replace entity @n[tag=sellshop] container.12 with purple_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"blue","text":"-1"}]'] 1
    #-10
    #item replace entity @n[tag=sellshop] container.11 with purple_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"blue","text":"-10"}]'] 1
    #+1
    item replace entity @n[tag=sellshop] container.14 with pink_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"red","text":"+1"}]',custom_data={ok_buy:0}] 1
    #+10
    item replace entity @n[tag=sellshop] container.15 with pink_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"red","text":"+10"}]',custom_data={ok_buy:0}] 1
    
    #
    scoreboard players set @s ok_price 50
    
    #個数
    scoreboard players set @s ok_shopcount 1

    #end
    item replace entity @n[tag=sellshop] container.22 with black_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"gold","text":"閉じる"}]',custom_data={ok_buy:0}] 1

    playsound ui.button.click master @s ~ ~ ~ 2 1 1
    
