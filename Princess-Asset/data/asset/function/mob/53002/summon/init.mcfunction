#> asset:mob/53002/summon/init
#
# @within function asset:mob/summon/init

## 名前
    data modify storage asset:mob name set value '{"text": "ヴァッサーゾンビ"}'

## タイプ
    data modify storage asset:mob type set value "enemy"

## 装備
    ### 防具
        data modify storage asset:mob armor.head set value {ID:54016}
        #data modify storage asset:mob armor.chest set value {}
        #data modify storage asset:mob armor.legs set value {}
        #data modify storage asset:mob armor.feet set value {}

    ### 武器
    #data modify storage asset:mob weapon.mainhand set value {}
    #data modify storage asset:mob weapon.offhand set value {}


## ステータス
    data modify storage asset:mob status.lvl set value 1
    data modify storage asset:mob status.exp set value 5
    data modify storage asset:mob status.money set value 10
    data modify storage asset:mob status.hp set value 100
    data modify storage asset:mob status.mp set value 0
    data modify storage asset:mob status.atk set value 10
    data modify storage asset:mob status.def set value 5
    data modify storage asset:mob status.speed set value 230

## ドロップ品
    data modify storage asset:mob loot set value [\
    {item:{ID:54002},weight:0.01},\
    {item:{ID:54003},weight:0.005},\
    {item:{ID:54004},weight:0.001},\
    {item:{ID:54016},weight:0.005},\
    {item:{ID:54017},weight:0.005},\
    {item:{ID:54018},weight:0.005},\
    {item:{ID:54019},weight:0.005},\
    {item:{ID:54020},weight:0.001},\
    {item:{ID:54021},weight:0.001},\
    {item:{ID:54022},weight:0.001},\
    {item:{ID:54023},weight:0.001},\
    {item:{ID:54501},weight:0.1},\
    {item:{ID:54508},weight:0.1},\
    {item:{ID:54511},weight:0.05}\
    ]

## NBT
#data modify storage asset:mob NBT set value {}
