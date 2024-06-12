#> asset:magic/52402/cast/check.condition
# 魔力の確認
# @within function asset:magic/52402/cast/

## タイプを設定
  ### 魔法名; JsonText
    data modify storage asset:magic Name set value '{"text":"レクイエム","color":"red"}'
  ### 消費魔力; Int
    data modify storage asset:magic MP set value 15
  ### クールタイム; Int
    data modify storage asset:magic CoolTime set value 40
  ### 効果値; Int; (任意)
    data modify storage asset:magic Amount set value 10
  ### 範囲; Float; (任意)
    data modify storage asset:magic Range set value 5.0f
  ### 対象; List.String; ["Enemy", "Player"]; (任意)
    data modify storage asset:magic Targets set value ["Player"]
  ### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Elements set value ["Licht"]
## 
  function asset.lib:magic/cast/check.condition/
## 
  execute if data storage asset:magic {CanCast:1b} run function asset:magic/52402/cast/main
