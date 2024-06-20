#> asset:magic/52101/cast/check.condition
# 魔力の確認
# @within function asset:magic/52101/cast/

## タイプを設定
  ### 魔法名; JsonText
    data modify storage asset:magic Name set value '{"text":"フレイム","color":"red"}'
  ### 消費魔力; Int
    data modify storage asset:magic MP set value 5
  ### クールタイム; Int
    data modify storage asset:magic CoolTime set value 40
  ### 効果値; Int; (任意)
    data modify storage asset:magic Amount set value 10
  ### 持続時間; Int; (任意)
    data modify storage asset:magic Duration set value 100
  ### 貫通数; Int; (任意)
    data modify storage asset:magic Pierce set value 1
  ### 範囲; Float; (任意)
    data modify storage asset:magic Range set value 1.0f
  ### 速度; Float; (任意)
    data modify storage asset:magic Speed set value 1.0f
  ### 対象; List.String; ["Enemy", "Player"]; (任意)
    data modify storage asset:magic Targets set value ["Enemy"]
  ### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Elements set value ["Flamme"]
## 引数があるか確認
  function asset.lib:magic/cast/check.condition/
##
  execute if data storage asset:magic {CanCast:1b} run function asset:magic/52101/cast/main
