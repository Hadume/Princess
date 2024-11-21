##チェスト付きトロッコを召喚
    tag @s add shopping
    tag @s add sell_shopping
    summon chest_minecart ~ ~1.2 ~ {NoGravity:1b,Silent:1b,Tags:["shopchest","sellshop"],CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},CustomName:'{"text": "shop"}',CustomNameVisible:0b}
    #プレイヤーIDを代入
    execute unless entity @n[type=chest_minecart,tag=shopchest,tag=sellshop,scores={ok_id=1..}] run scoreboard players operation @n[type=chest_minecart,tag=shopchest,tag=itemshop] ok_id = @s ok_id
    #プレイヤーのインベントリを足元にシュルカーボックスを召喚して保存し、クリア
    
    #summon villager ~ ~-0.5 ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Tags:["shop","sell"],CustomName:'{"bold":true,"color":"green","text":"買取屋"}',VillagerData:{profession:"minecraft:none"},active_effects:[{id:"resistance",amplifier:5b,duration:-1,show_particles:0b}]}
    