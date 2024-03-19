#> asset:magic/52001/cast/main
# 
# @within function asset:magic/52001/cast/check.mp

## 本体を召喚
  summon armor_stand ~ ~ ~ {Invulnerable:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b,Tags:["Spell","Spell.Init"]}
## タイプを設定
  ### 効果値 - Int
    data modify storage asset: Magic.Amount set value 10
  ### クールタイム - Int
    data modify storage asset: Magic.CoolTime set value 40
  ### 対象 - List.String - ["Enemy", "Player"]
    data modify storage asset: Magic.Target set value ["Enemy"]
  ### 発射数 - Int
    data modify storage asset: Magic.Multiple set value 1
  ### 貫通数 - Int
    data modify storage asset: Magic.Pierce set value 1
  ### 属性 - List.String - 任意 - ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]
    data modify storage asset: Magic.Element set value ["Flamme"]
  ### 範囲 - Float - 任意
    data modify storage asset: Magic.Range set value 1.0f
  ### 速度 - Float - 任意
    data modify storage asset: Magic.Speed set value 1.0f
  ### 持続時間 - Int - 任意
    data modify storage asset: Magic.Duration set value 100
## 魔法名 - JsonText
  data modify storage asset: Magic.Name set value '{"text":"ファイア","color":"red"}'
## 初期化
  function asset.lib:magic/cast/init/
