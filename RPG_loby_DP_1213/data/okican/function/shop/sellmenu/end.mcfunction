##閉じる
    #持っているものをクリアする
    item replace entity @s player.cursor with air
    playsound block.note_block.basedrum master @s 3 1 1
    #閉じる
    #kill @n[tag=shopchest]
    function okican:shop/remove/sell
    playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 3 1 1
    