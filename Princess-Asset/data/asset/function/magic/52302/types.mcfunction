#> asset:magic/52302/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名 : TextComponent
    data modify storage asset:magic Raw.Name set value '{"text":"ブラスト","color":"green"}'

## 消費魔力 : int
    data modify storage asset:magic Raw.MP set value 0

## クールタイム : int
    data modify storage asset:magic Raw.Cooltime set value 20

## 範囲? : float
    data modify storage asset:magic Raw.Range set value 5.0f

## 対象? : [Target] @ ..2
    data modify storage asset:magic Raw.Targets set value ["Enemy"]

## 属性? : [Element] @ ..5
    data modify storage asset:magic Raw.Elements set value ["Wind"]
