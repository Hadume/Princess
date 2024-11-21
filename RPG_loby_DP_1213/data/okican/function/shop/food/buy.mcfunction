##購入する
    #持っているものをクリアする
    item replace entity @s player.cursor with air

    #買う
    playsound entity.player.levelup master @s ~ ~ ~ 3 2 1
    #
    #item modify entity @n[tag=shopchest] container.13 okican:shop/add
    #CMD別に付与する(変えるところ)
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=1] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple1
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=2] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple2
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=3] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple3
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=4] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple4
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=5] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple5
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=6] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple6
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=7] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple7
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=8] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple8
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=9] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple9
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=10] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple10
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=11] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple11
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=12] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple12
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=13] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple13
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=14] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple14
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=15] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple15
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=16] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple16
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=17] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple17
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=18] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple18
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=19] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple19
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=20] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple20
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=21] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple21
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=22] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple22
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=23] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple23
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=24] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple24
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=25] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple25
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=26] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple26
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=27] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple27
    execute if items entity @n[tag=shopchest] container.13 apple[custom_model_data=28] run item modify entity @n[tag=shopchest] container.13 okican:shop/food/apple28
    
    item replace block 0 -64 0 container.0 from entity @n[tag=shopchest] container.13
    #data modify block 0 -64 0 item.count set from entity @n[tag=shopchest] Items[13]

    loot give @s mine 0 -64 0 debug_stick
    item replace block 0 -64 0 container.0 with air
    #代金
    scoreboard players operation @s ok_mill -= @s ok_buy

    

    #リストに戻る
    ## タグ
    tag @s remove foodselect
    tag @s remove shopselect
    function okican:shop/foodmenu/1
    