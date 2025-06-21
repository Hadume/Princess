#> asset:magic/52102/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名
    data modify storage asset:magic name set value '{"text":"フレア","color":"red"}'

## 消費魔力
    data modify storage asset:magic mp set value 15

## クールタイム
    data modify storage asset:magic cooltime set value 40

## 発動数
    data modify storage asset:magic multiple set value 3

## 効果値
    data modify storage asset:magic amount set value 5

## 持続時間
    data modify storage asset:magic duration set value 60

## 拡散範囲
    data modify storage asset:magic spread set value 4.0f

## 範囲
    data modify storage asset:magic range set value 2.0f

## 対象
    data modify storage asset:magic targets set value ["enemy"]

## 属性
    data modify storage asset:magic elements set value ["flamme"]
