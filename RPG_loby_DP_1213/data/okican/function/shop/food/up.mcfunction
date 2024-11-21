##増やす
#中央のアイテムをシュルカーボックスを介して、個数を増やす
#同時にミルを判定し、買える/不足のボタンを設置
#購入
    item replace entity @n[tag=shopchest] container.14 from entity @s player.cursor
    item replace entity @s player.cursor with air
    playsound ui.button.click master @s ~ ~ ~ 3 1.0 1
    playsound block.note_block.bell master @s ~ ~ ~ 3 1 1

    scoreboard players operation @s ok_buy += @s ok_price
    scoreboard players operation @s ok_mill_dummy = @s ok_mill
    #scoreboard players operation @s ok_mill_dummy -= @s ok_buy
    execute unless score @s ok_mill_dummy >= @s ok_buy run item replace entity @n[tag=foodshop] container.17 with red_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"red","bold": true,"text":"ミルが不足"}]',custom_data={ok_buy:0}] 1
    execute if score @s ok_mill_dummy >= @s ok_buy run item replace entity @n[tag=foodshop] container.17 with green_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"green","bold": true,"text":"購入する"}]',custom_data={ok_buy:0}] 1
    #execute if score @s ok_mill_dummy matches ..99 run item replace entity @n[tag=foodshop] container.17 with red_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"red","bold": true,"text":"ミルが不足"}]',lore=['[{"color":"white","italic": false,"score":{"name":"@s","objective":"ok_buy"}},{"text":"ミル","color": "white","italic": false}]']] 1
    #execute if score @s ok_mill_dummy matches 100.. run item replace entity @n[tag=foodshop] container.17 with green_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"green","bold": true,"text":"購入する"}]',lore=['[{"color":"white","italic": false,"score":{"name":"@s","objective":"ok_buy"}},{"text":"ミル","color": "white","italic": false}]']] 1
    
    scoreboard players add @s ok_shopcount 1
    
    item modify entity @n[tag=shopchest] container.13 okican:shop/add
    
    #減を出す
    item replace entity @n[tag=foodshop] container.12 with purple_stained_glass_pane[custom_model_data=1,custom_name='[{"color":"blue","text":"-1"}]',custom_data={ok_buy:0}] 1
    execute if score @s ok_shopcount matches 11.. run item replace entity @n[tag=foodshop] container.11 with purple_stained_glass_pane[custom_model_data=2,custom_name='[{"color":"blue","text":"-10"}]',custom_data={ok_buy:0}] 1
    #増を消す
    execute if score @s ok_shopcount matches 64.. run item replace entity @n[tag=shopchest] container.14 with air
    execute if score @s ok_shopcount matches 55.. run item replace entity @n[tag=shopchest] container.15 with air
    
    