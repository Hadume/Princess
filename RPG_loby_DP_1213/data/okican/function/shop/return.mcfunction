#retuen
    playsound block.beehive.drip master @s ~ ~ ~ 1 1 1
    item replace block 0 -64 0 container.0 from entity @s player.cursor
    loot give @s mine 0 -64 0 debug_stick
    item replace entity @s player.cursor with air
    item replace block 0 -64 0 container.0 with air
    