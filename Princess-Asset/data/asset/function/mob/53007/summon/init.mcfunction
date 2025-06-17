#> asset:mob/53007/summon/init
#
# @within function asset:mob/summon/init

## 名前
    data modify storage asset:mob name set value '{"translate":"entity.minecraft.husk"}'

## タイプ
    data modify storage asset:mob type set value "enemy"

## 装備
    ### 防具
    #data modify storage asset:mob armor.head set value {}
    #data modify storage asset:mob armor.chest set value {}
    #data modify storage asset:mob armor.legs set value {}
    #data modify storage asset:mob armor.feet set value {}

    ### 武器
    #data modify storage asset:mob weapon.mainhand set value {}
    #data modify storage asset:mob weapon.offhand set value {}


## ステータス
    data modify storage asset:mob status.lvl set value 1
    data modify storage asset:mob status.exp set value 0
    data modify storage asset:mob status.money set value 0
    data modify storage asset:mob status.hp set value 20
    data modify storage asset:mob status.mp set value 0
    data modify storage asset:mob status.atk set value 4
    data modify storage asset:mob status.def set value 1
    data modify storage asset:mob status.speed set value 230

## tagを付与
    tag @s add catboss_helper
