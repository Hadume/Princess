scoreboard players set @a ti 5
clear @a totem_of_undying 1
fill 171 66 -70 171 65 -70 air
tellraw @a {"text": "不死のトーテムが消えて道がひらけた。","color": "yellow"}
playsound entity.player.levelup master @a ~ ~ ~ 2.0 2.0 1.0
kill @e[type=vex]