#前のページ
    #持っているものをクリアする
    item replace entity @s player.cursor with air
    #スコアを参照して、ページを表示する
    execute if score @s ok_page matches 2 run function okican:shop/foodmenu/1
    execute if score @s ok_page matches 3 run function okican:shop/foodmenu/2
    execute if score @s ok_page matches 4 run function okican:shop/foodmenu/3
    execute if score @s ok_page matches 5 run function okican:shop/foodmenu/4
    execute if score @s ok_page matches 6 run function okican:shop/foodmenu/5
    
    playsound ui.button.click master @s ~ ~ ~ 3 0.5 1
    