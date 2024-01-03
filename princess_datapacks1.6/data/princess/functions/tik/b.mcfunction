fill 150 0 -37 150 1 -37 air
tellraw @a {"text": "入り口が開かれた。"}
particle minecraft:poof 150 0 -37 2 2 2 1 100 force
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 3.0 1.0 1.0
kill @e[type=vex]
