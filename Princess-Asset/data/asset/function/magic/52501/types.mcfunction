#> asset:magic/52501/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名 : TextComponent
    data modify storage asset:magic Raw.Name set value '{"text":"タイムロック","color":"dark_purple"}'

## 消費魔力 : int
    data modify storage asset:magic Raw.MP set value 15

## クールタイム : int
    data modify storage asset:magic Raw.Cooltime set value 40

## 持続時間? : int
    data modify storage asset:magic Raw.Duration set value 60

## 範囲? : float
    data modify storage asset:magic Raw.Range set value 5.0f

## 対象? : [Target] @ ..2
    data modify storage asset:magic Raw.Targets set value ["Enemy"]

## 属性? : [Element] @ ..5
    data modify storage asset:magic Raw.Elements set value ["Dunkel"]
