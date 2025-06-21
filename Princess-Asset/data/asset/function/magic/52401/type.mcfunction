#> asset:magic/52401/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名
    data modify storage asset:magic name set value '{"text":"ルシフェル","color":"yellow"}'

## 消費魔力
    data modify storage asset:magic mp set value 5

## クールタイム
    data modify storage asset:magic cooltime set value 200

## 持続時間
    data modify storage asset:magic duration set value 200

## 範囲
    data modify storage asset:magic range set value 5.0f

## 対象
    data modify storage asset:magic targets set value ["player"]

## 属性
    data modify storage asset:magic elements set value ["licht"]
