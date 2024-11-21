##food main 個数選択画面

##クリック検知
    #減
    execute if entity @s[predicate=okican:shop/down] run function okican:shop/food/down
    execute if entity @s[predicate=okican:shop/down10] run function okican:shop/food/down10
    #増
    execute if entity @s[predicate=okican:shop/up] run function okican:shop/food/up
    execute if entity @s[predicate=okican:shop/up10] run function okican:shop/food/up10
    #リストに戻る
    execute if entity @s[predicate=okican:shop/back2] run function okican:shop/food/back
    #不足
    execute if entity @s[predicate=okican:shop/shortage] run playsound block.note_block.bass master @s ~ ~ ~ 3 1 1
    execute if entity @s[predicate=okican:shop/shortage] run item replace entity @n[tag=shopchest] container.17 from entity @s player.cursor
    execute if entity @s[predicate=okican:shop/shortage] run item replace entity @s player.cursor with air
    #購入する
    execute if entity @s[predicate=okican:shop/buy] run function okican:shop/food/buy
    #りんごを持った場合
    execute if entity @s[predicate=okican:shop/food/apple] run function okican:shop/food/apple_return
    

    #return
    #余計なアイテムが入ったことを検知して、チェストにコピー・スロットクリア・アイテム補充・返却
    #すべてのアイテムにおいて、持ったら、(りんご)買ったときはタグをつけること
    execute unless items entity @s player.cursor minecraft:apple[custom_data={ok_buy:0}] if entity @s[tag=shopping,predicate=!okican:shop/air] run function okican:shop/return

    