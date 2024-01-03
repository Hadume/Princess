scoreboard players set @a ti 2
tellraw @a [{"text": "[オーナー]","color": "green"},{"text": "たしかに受け取った。それから、１つ頼み事があるんだ。"}]
playsound entity.experience_orb.pickup master @a ~ ~ ~ 2.0 1.0 1.0
schedule function princess:1/a1 3s
