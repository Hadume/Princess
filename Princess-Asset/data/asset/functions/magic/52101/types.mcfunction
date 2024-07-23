#> asset:magic/52101/types
#
# @within function asset:magic/52101/cast/check.condition

## タイプを設定
  ### 魔法名; JsonText
    data modify storage asset:magic Raw.Name set value '{"text":"フレイム","color":"red"}'
  ### 消費魔力; Int
    data modify storage asset:magic Raw.MP set value 5
  ### クールタイム; Int
    data modify storage asset:magic Raw.Cooltime set value 10
  ### 効果値?; Int
    data modify storage asset:magic Raw.Amount set value 10
  ### 持続時間?; Int
    data modify storage asset:magic Raw.Duration set value 100
  ### 貫通数?; Int
    data modify storage asset:magic Raw.Pierce set value 1
  ### 範囲?; Float
    data modify storage asset:magic Raw.Range set value 1.0f
  ### 速度?; Float
    data modify storage asset:magic Raw.Speed set value 1.0f
  ### 対象?; List.String; ["Enemy", "Player"]
    data modify storage asset:magic Raw.Targets set value ["Enemy"]
  ### 属性?; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]
    data modify storage asset:magic Raw.Elements set value ["Flamme"]
## 引数があるか確認
  function asset.lib:magic/types/check.condition/
