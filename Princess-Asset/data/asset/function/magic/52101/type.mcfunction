#> asset:magic/52101/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名
    data modify storage asset:magic name set value '{"text":"フレイム","color":"red"}'

## 消費魔力
    data modify storage asset:magic mp set value 5

## クールタイム
    data modify storage asset:magic cooltime set value 10

## 効果値
    data modify storage asset:magic amount set value 10

## 持続時間
    data modify storage asset:magic duration set value 100

## 貫通数
    data modify storage asset:magic pierce set value 1

## 速度
    data modify storage asset:magic speed set value 1.0f

## 範囲
    data modify storage asset:magic range set value 1.0f

## 対象
    data modify storage asset:magic targets set value ["enemy"]

## 属性
    data modify storage asset:magic elements set value ["flamme"]
