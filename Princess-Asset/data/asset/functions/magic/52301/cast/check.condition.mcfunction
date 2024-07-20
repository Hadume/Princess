#> asset:magic/52301/cast/check.condition
# 魔力の確認
# @within function asset:magic/52301/cast/

## タイプを設定
  ### 魔法名; JsonText
    data modify storage asset:magic Raw.Name set value '{"text":"アトラクト","color":"red"}'
  ### 消費魔力; Int
    data modify storage asset:magic Raw.MP set value 3
  ### クールタイム; Int
    data modify storage asset:magic Raw.Cooltime set value 40
  ### 範囲; Float; (任意)
    data modify storage asset:magic Raw.Range set value 5.0f
  ### 対象; List.String; ["Enemy", "Player"]; (任意)
    data modify storage asset:magic Raw.Targets set value ["Enemy"]
  ### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Raw.Elements set value ["Wind"]
##
  function asset.lib:magic/cast/check.condition/
##
  execute if data storage asset:magic {CanCast:1b} run function asset:magic/52301/cast/main
