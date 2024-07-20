#> asset:magic/52201/cast/check.condition
# 魔力の確認
# @within function asset:magic/52201/cast/

## タイプを設定
  ### 魔法名; JsonText
    data modify storage asset:magic Raw.Name set value '{"text":"バブル","color":"red"}'
  ### 消費魔力; Int
    data modify storage asset:magic Raw.MP set value 5
  ### クールタイム; Int
    data modify storage asset:magic Raw.Cooltime set value 40
  ### 効果値; Int; (任意)
    data modify storage asset:magic Raw.Amount set value 10
  ### 持続時間; Int; (任意)
    data modify storage asset:magic Raw.Duration set value 100
  ### 貫通数; Int (任意)
    data modify storage asset:magic Raw.Pierce set value 1
  ### 範囲; Float; (任意)
    data modify storage asset:magic Raw.Range set value 0.5f
  ### 速度; Float; (任意)
    data modify storage asset:magic Raw.Speed set value 1.0f
  ### 対象; List.String; ["Enemy", "Player"]; (任意)
    data modify storage asset:magic Raw.Targets set value ["Enemy"]
  ### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Raw.Elements set value ["Wasser"]
##
  function asset.lib:magic/cast/check.condition/
##
  execute if data storage asset:magic {CanCast:1b} run function asset:magic/52201/cast/main
