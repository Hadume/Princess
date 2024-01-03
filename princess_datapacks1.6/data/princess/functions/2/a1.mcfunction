scoreboard players set @a ti 3
tellraw @a {"text": "兵士から話は聞いている。地下へ行くには「地下のカギ」がいる。"}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 2.0 1.0 1.0
schedule function princess:2/a2 2s