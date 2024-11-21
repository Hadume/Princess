## ミックスサラダ
#持っているものをクリアする
    item replace entity @s player.cursor with air

##合計金額をセット(変えるところ)
    scoreboard players set @s ok_buy 300

## タグ
    tag @s add foodselect
    tag @s add shopselect

#所持金表示
    item replace entity @n[tag=foodshop] container.4 with emerald[custom_model_data=1,custom_data={ok_buy:0}] 1
    execute as @s run item modify entity @n[tag=foodshop] container.4 okican:shop/mill

## アイテム配置
    item replace entity @n[tag=foodshop] container.10 with air
    item replace entity @n[tag=foodshop] container.11 with air
    item replace entity @n[tag=foodshop] container.12 with air
    item replace entity @n[tag=foodshop] container.15 with air
    item replace entity @n[tag=foodshop] container.16 with air
    item replace entity @n[tag=foodshop] container.20 with air
    item replace entity @n[tag=foodshop] container.24 with air

    #商品(変えるところ)
    item replace entity @n[tag=foodshop] container.13 from block 1 -63 1 container.3
    #戻る
    item replace entity @n[tag=foodshop] container.20 with blue_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"blue","text":"戻る"}]',custom_data={ok_buy:0}] 1
    #-1
    #item replace entity @n[tag=foodshop] container.12 with purple_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"blue","text":"-1"}]'] 1
    #-10
    #item replace entity @n[tag=foodshop] container.11 with purple_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"blue","text":"-10"}]'] 1
    #+1
    item replace entity @n[tag=foodshop] container.14 with pink_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"red","text":"+1"}]',custom_data={ok_buy:0}] 1
    #+10
    item replace entity @n[tag=foodshop] container.15 with pink_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"red","text":"+10"}]',custom_data={ok_buy:0}] 1
    
    #購入する/ミルが不足(変えるところ)
    scoreboard players set @s ok_price 300
    scoreboard players operation @s ok_mill_dummy = @s ok_mill
    execute if score @s ok_mill_dummy matches ..299 run item replace entity @n[tag=foodshop] container.17 with red_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"red","bold": true,"text":"ミルが不足"}]',custom_data={ok_buy:0}] 1
    execute if score @s ok_mill_dummy matches 300.. run item replace entity @n[tag=foodshop] container.17 with green_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"green","bold": true,"text":"購入する"}]',custom_data={ok_buy:0}] 1
    
    scoreboard players set @s ok_shopcount 1

    #end
    item replace entity @n[tag=foodshop] container.22 with black_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"gold","text":"閉じる"}]',custom_data={ok_buy:0}] 1

    playsound ui.button.click master @s ~ ~ ~ 2 1 1
    