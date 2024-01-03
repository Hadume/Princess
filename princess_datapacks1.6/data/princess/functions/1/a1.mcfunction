tellraw @a [{"text": "[オーナー]","color": "green"},{"text": "この鍵を持って兵舎へ行ってほしいんだ。"}]
playsound entity.experience_orb.pickup master @a ~ ~ ~ 2.0 1.0 1.0
give @p lever{display:{Name:'{"text": "兵舎のカギ"}',Lore:['[{"text": "兵舎を開けるための鍵"}]']}} 1
schedule function princess:1/a2 3s