##shop

##視線の先に店員がいたら、眼の前にチェスト付きトロッコを召喚する
    #foodshop
    execute if entity @s[tag=!shopping,predicate=okican:villager/food] if entity @e[tag=shop,tag=food,type=villager,distance=..3] run function okican:shop/summon/food
    #sellshop
    execute if entity @s[tag=!shopping,predicate=okican:villager/sell] if entity @e[tag=shop,tag=sell,type=villager,distance=..3] run function okican:shop/summon/sell
    

##トロッコを頭の位置にtp(共通)
    execute as @s[tag=shopping] at @s run tp @n[tag=shopchest,tag=!shopchest_close] ~ ~1.5 ~

##視線の先に店員がいなかったら、トロッコをキルして、買い物中のタグも消す
    #foodshop
    execute if entity @s[tag=shopping,tag=food_shopping] unless entity @s[predicate=okican:villager/food] run function okican:shop/remove/food
    #sellshop
    execute if entity @s[tag=shopping,tag=sell_shopping] unless entity @s[predicate=okican:villager/sell] run function okican:shop/remove/sell
    
##クリック検知
##次のページ
    execute if entity @s[tag=shopping,tag=!shopselect,predicate=okican:shop/next] run function okican:shop/foodmenu/next

##前のページ
    execute if entity @s[tag=shopping,tag=!shopselect,predicate=okican:shop/back] run function okican:shop/foodmenu/back

##end
    #foodshop
    execute if entity @s[tag=shopping,tag=food_shopping,predicate=okican:shop/food/end] run function okican:shop/foodmenu/end
    #sellshop
    execute if entity @s[tag=shopping,tag=sell_shopping,predicate=okican:shop/end_sell] run function okican:shop/sellmenu/end
    
##emeraled
    #foodshop
    execute if entity @s[tag=shopping,tag=food_shopping,predicate=okican:shop/mill] run function okican:shop/mill
    #sellshop
    execute if entity @s[tag=shopping,tag=sell_shopping,predicate=okican:shop/mill] run function okican:shop/mill_sell

##sell
    execute if entity @s[tag=shopping,tag=sell_shopping,predicate=okican:shop/sell] run function okican:shop/sellmenu/sell


## 個数選択～購入まで
    #foodshop
    execute if entity @s[tag=shopping,tag=shopselect,tag=foodselect] run function okican:shop/food/main
    
    
#余計なアイテムが入ったことを検知して、チェストにコピー・スロットクリア・アイテム補充・返却
    #すべてのアイテムにおいて、持ったら、(共通)
    execute if entity @s[tag=shopping,tag=shopping_open,tag=!sell_shopping,tag=!shopselect,predicate=!okican:shop/air] run function okican:shop/return

#インベントリ内に入ったアイコンを消す（shift押し対策）
    #foodshop
    execute if items entity @s[tag=shopping,tag=food_shopping] container.* *[custom_data={ok_buy:0}] run function okican:shop/foodmenu/1
    #sellshop
    execute if items entity @s[tag=shopping,tag=sell_shopping] container.* *[custom_data={ok_buy:0}] run function okican:shop/sellmenu/
    
    execute if items entity @s[tag=shopping] container.* *[custom_data={ok_buy:0}] run clear @s *[custom_data={ok_buy:0}]
    
#Qで捨てたものを消す
    #foodshop
    execute if entity @s[tag=shopping,tag=food_shopping] if entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{ok_buy:0}}}}] run function okican:shop/foodmenu/1
    #sellshop
    execute if entity @s[tag=shopping,tag=sell_shopping] if entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{ok_buy:0}}}}] run function okican:shop/sellmenu/
    
    execute as @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{ok_buy:0}}}}] at @s run kill @s

##商品クリック
##foodshop
    execute if entity @s[tag=shopping,tag=food_shopping,tag=!shopselect] run function okican:shop/foodmenu/main
##sellshop
    execute if entity @s[tag=shopping,tag=sell_shopping] run function okican:shop/sellmenu/main
    

    
    