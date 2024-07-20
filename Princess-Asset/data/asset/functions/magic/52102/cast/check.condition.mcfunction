#> asset:magic/52102/cast/check.condition
# 魔力の確認
# @within function asset:magic/52102/cast/

## タイプを設定
  ### 魔法名; JsonText
    data modify storage asset:magic Raw.Name set value '{"text":"フレア","color":"red"}'
  ### 消費魔力; Int
    data modify storage asset:magic Raw.MP set value 15
  ### クールタイム; Int
    data modify storage asset:magic Raw.Cooltime set value 40
  ### 発動数; Int
    data modify storage asset:magic Raw.Multiple set value 3
  ### 効果値; Int; (任意)
    data modify storage asset:magic Raw.Amount set value 10
  ### 持続時間; Int; (任意)
    data modify storage asset:magic Raw.Duration set value 100
  ### 拡散範囲; Float; (任意)
    data modify storage asset:magic Raw.Spread set value 4.0f
  ### 範囲; Float; (任意)
    data modify storage asset:magic Raw.Range set value 2.0f
  ### 対象; List.String; ["Enemy", "Player"]; (任意)
    data modify storage asset:magic Raw.Targets set value ["Enemy"]
  ### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Raw.Elements set value ["Flamme"]
##
  function asset.lib:magic/cast/check.condition/
##
  execute if data storage asset:magic {CanCast:1b} run function asset:magic/52102/cast/main
