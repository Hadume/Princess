#> asset:magic/52201/cast/main
# 
# @within function asset:magic/52201/cast/check.mp

## 本体を召喚
  summon armor_stand ~ ~ ~ {FallDistance:-4096f,NoGravity:0b,Invulnerable:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"tube_coral_block",Count:1b}],Pose:{Head:[180f,0f,0f]},Small:1b,Tags:["Spell","Spell.Init"]}
## 魔法名; JsonText
  data modify storage asset:magic Name set value '{"text":"バブル","color":"red"}'
## 音を鳴らす
  execute at @s run playsound entity.generic.splash master @s ~ ~ ~ 0.5 1
  execute at @s run playsound block.bubble_column.upwards_ambient master @s ~ ~ ~ 0.5 2
## タイプを設定
  ### 効果値; Int
    data modify storage asset:magic Amount set value 10
  ### クールタイム; Int
    data modify storage asset:magic CoolTime set value 40
  ### 対象; List.String; ["Enemy", "Player"]
    data modify storage asset:magic Target set value ["Enemy"]
  ### 発射数; Int
    execute unless score #Magic.Multiple Asset = #Magic.Multiple Asset run scoreboard players set #Magic.Multiple Asset 1
  ### 貫通数; Int (任意)
    data modify storage asset:magic Pierce set value 1
  ### 属性; String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Element set value "Wasser"
  ### 範囲; Float; (任意)
    data modify storage asset:magic Range set value 1.0f
  ### 速度; Float; (任意)
    data modify storage asset:magic Speed set value 1.0f
  ### 持続時間; Int; (任意)
    data modify storage asset:magic Duration set value 100
## 初期化
  function asset.lib:magic/cast/check.condition
