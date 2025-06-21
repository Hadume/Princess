#> asset:magic/52302/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名
    data modify storage asset:magic name set value '{"text":"ブラスト","color":"green"}'

## 消費魔力
    data modify storage asset:magic mp set value 0

## クールタイム
    data modify storage asset:magic cooltime set value 20

## 範囲
    data modify storage asset:magic range set value 5.0f

## 対象
    data modify storage asset:magic targets set value ["enemy"]

## 属性
    data modify storage asset:magic elements set value ["wind"]
