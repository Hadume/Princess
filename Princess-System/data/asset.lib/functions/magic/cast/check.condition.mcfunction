#> asset.lib:magic/cast/check.condition
# 
# @within function asset:magic/*/cast/main

## 引数が足りてなかったら
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Name run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:magic Name","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic CoolTime run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:CoolTime Name","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Target run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:magic Target","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless score #Magic.Multiple Asset = #Magic.Multiple Asset run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "#Magic.Multiple Asset","italic": true,"color": "red"}]
## 足りていたら
  execute unless data storage asset:temp Error if data storage asset:magic Duration if entity @s[tag=Spell] run function asset.lib:magic/cast/spell/
  execute unless data storage asset:temp Error if data storage asset:magic Range unless entity @s[tag=Spell] run function asset.lib:magic/cast/action
## 発射数を減らす
  scoreboard players remove #Magic.Multiple Asset 1
## 処理を終了
  #execute if score #Magic.Multiple Asset matches ..0 run function asset.lib:magic/cast/post.prcessing
## まだ召喚
  execute if score #Magic.Multiple Asset matches 1.. run function #asset:magic/cast
