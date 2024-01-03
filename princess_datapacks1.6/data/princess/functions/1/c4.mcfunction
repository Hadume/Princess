tellraw @a [{"text": "[兵士]","color": "red"},{"text": "なるべく早く頼む。城にはこの","color": "white"},{"text": "鍵","color": "yellow"},{"text": "を使うことで入れる。","color": "white"}]
playsound entity.experience_orb.pickup master @a ~ ~ ~ 2.0 1.0 1.0
give @p tripwire_hook{display:{Name:'[{"text":"城門のカギ"}]',Lore:['[{"text":"城門を開けるための鍵"}]']}} 1
schedule function princess:1/c5 3s