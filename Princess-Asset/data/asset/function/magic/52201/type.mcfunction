#> asset:magic/52201/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名
    data modify storage asset:magic name set value '{"text":"バブル","color":"blue"}'

## 消費魔力
    data modify storage asset:magic mp set value 5

## クールタイム
    data modify storage asset:magic cooltime set value 40

## 効果値
    data modify storage asset:magic amount set value 10

## 持続時間
    data modify storage asset:magic duration set value 100

## 貫通数
    data modify storage asset:magic pierce set value 1

## 速度
    data modify storage asset:magic speed set value 1.0f

## 範囲
    data modify storage asset:magic range set value 0.5f

## 対象
    data modify storage asset:magic targets set value ["enemy"]

## 属性
    data modify storage asset:magic elements set value ["wasser"]
