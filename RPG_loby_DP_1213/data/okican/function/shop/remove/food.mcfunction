#
    tag @s remove shopping
    tag @s remove food_shopping
    tag @s remove shopping_open
    tag @s remove foodselect
    tag @s remove shopselect
    tag @n[tag=shopchest] add shopchest_close
    tp @n[tag=shopchest,tag=shopchest_close] ~ -70 ~
    execute as @e[tag=shopchest,tag=shopchest_close] at @s run data merge entity @s {NoGravity:0b}
    data modify entity @n[tag=shopchest] Items set from storage ok_empty 00
    #kill @n[tag=foodshop]
    