#> asset:magic/52201/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名 : TextComponent
    data modify storage asset:magic Raw.Name set value '{"text":"バブル","color":"blue"}'

## 消費魔力 : int
    data modify storage asset:magic Raw.MP set value 5

## クールタイム : int
    data modify storage asset:magic Raw.Cooltime set value 40

## 効果値? : int
    data modify storage asset:magic Raw.Amount set value 10

## 持続時間? : int
    data modify storage asset:magic Raw.Duration set value 100

## 貫通数? : int
    data modify storage asset:magic Raw.Pierce set value 1

## 範囲? : float
    data modify storage asset:magic Raw.Range set value 0.5f

## 速度? : float
    data modify storage asset:magic Raw.Speed set value 1.0f

## 対象? : [Target] @ ..2
    data modify storage asset:magic Raw.Targets set value ["Enemy"]

## 属性? : [Element] @ ..5
    data modify storage asset:magic Raw.Elements set value ["Wasser"]
