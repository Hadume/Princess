#> asset:mob/53006/summon/init
#
# @within function asset:mob/summon/init

## 名前
    data modify storage asset:mob name set value '{"text": "キャットミー"}'

## タイプ
    data modify storage asset:mob type set value "boss"

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
    data modify storage asset:mob status.lvl set value 5
    data modify storage asset:mob status.exp set value 100
    data modify storage asset:mob status.money set value 200
    data modify storage asset:mob status.hp set value 1000
    data modify storage asset:mob status.mp set value 0
    data modify storage asset:mob status.atk set value 40
    data modify storage asset:mob status.def set value 5
    data modify storage asset:mob status.speed set value 0

## NBT
    data modify storage asset:mob NBT set value {CustomNameVisible:0b}
