
    tag @s remove foodselect
    tag @s remove shopselect
    execute if score @s ok_page matches 1 run function okican:shop/foodmenu/1
    execute if score @s ok_page matches 2 run function okican:shop/foodmenu/2
    execute if score @s ok_page matches 3 run function okican:shop/foodmenu/3
    execute if score @s ok_page matches 4 run function okican:shop/foodmenu/4
    execute if score @s ok_page matches 5 run function okican:shop/foodmenu/5
    execute if score @s ok_page matches 6 run function okican:shop/foodmenu/6
    
    playsound ui.button.click master @s ~ ~ ~ 3 0.5 1
    