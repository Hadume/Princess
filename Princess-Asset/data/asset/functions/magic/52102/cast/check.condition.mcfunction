#> asset:magic/52102/cast/check.condition
# 魔力の確認
# @within function asset:magic/52102/cast/

## タイプを設定
  ### 魔法名; JsonText
    data modify storage asset:magic Name set value '{"text":"フレア","color":"red"}'
  ### 消費魔力; Int
    data modify storage asset:magic MP set value 15
  ### クールタイム; Int
    data modify storage asset:magic CoolTime set value 40
  ### 発動数; Int
    data modify storage asset:magic Multiple set value 3
  ### 効果値; Int; (任意)
    data modify storage asset:magic Amount set value 10
  ### 持続時間; Int; (任意)
    data modify storage asset:magic Duration set value 100
  ### 拡散範囲; Float; (任意)
    data modify storage asset:magic Spread set value 4.0f
  ### 範囲; Float; (任意)
    data modify storage asset:magic Range set value 2.0f
  ### 対象; List.String; ["Enemy", "Player"]; (任意)
    data modify storage asset:magic Targets set value ["Enemy"]
  ### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Elements set value ["Flamme"]
## 
  function asset.lib:magic/cast/check.condition/
## 
  execute if data storage asset:magic {CanCast:1b} run function asset:magic/52102/cast/main
