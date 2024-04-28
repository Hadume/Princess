#> asset:magic/52001/cast/main
# 
# @within function asset:magic/52001/cast/check.mp

## 本体を召喚
  summon armor_stand ~ ~ ~ {Invulnerable:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b,FallDistance:-4096f,Tags:["Spell","Spell.Init"]}
## 魔法名; JsonText
  data modify storage asset:magic Name set value '{"text":"ファイア","color":"red"}'
## タイプを設定
  ### 効果値; Int
    data modify storage asset:magic Amount set value 10
  ### クールタイム; Int
    data modify storage asset:magic CoolTime set value 0
  ### 対象; List.String; ["Enemy", "Player"]
    data modify storage asset:magic Target set value ["Enemy"]
  ### 発射数; Int
    data modify storage asset:magic Multiple set value 1
  ### 貫通数; Int
    data modify storage asset:magic Pierce set value 1
  ### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Element set value ["Flamme"]
  ### 範囲; Float; (任意)
    data modify storage asset:magic Range set value 1.0f
  ### 速度; Float; (任意)
    data modify storage asset:magic Speed set value 1.0f
  ### 持続時間; Int; (任意)
    data modify storage asset:magic Duration set value 50
## 初期化
  function asset.lib:magic/cast/spell/check.condition
