#> asset:magic/52301/types
# 魔法のデータ
# @within function
#   asset:magic/cast
#   asset:magic/icon

## 魔法名
    data modify storage asset:magic name set value '{"text":"アトラクト","color":"green"}'

## 消費魔力
    data modify storage asset:magic mp set value 3

## クールタイム
    data modify storage asset:magic cooltime set value 40

## 範囲
    data modify storage asset:magic range set value 5.0f

## 対象
    data modify storage asset:magic targets set value ["enemy"]

## 属性
    data modify storage asset:magic elements set value ["wind"]
