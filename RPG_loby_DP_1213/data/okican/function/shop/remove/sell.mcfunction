#
    tag @s remove shopping
    tag @s remove sell_shopping
    tag @s remove shopping_open
    tag @s add sellfoodselect
    
    tag @n[tag=shopchest] add shopchest_close
    tp @n[tag=shopchest,tag=shopchest_close] ~ -70 ~
    execute as @e[tag=shopchest,tag=shopchest_close] at @s run data merge entity @s {NoGravity:0b}
    data modify entity @n[tag=shopchest] Items set from storage ok_empty 00
    #kill @n[tag=sellshop]
    