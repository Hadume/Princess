#> asset:mob/53004/summon/init
#
# @within function asset:mob/summon/init

## 名前
    data modify storage asset:mob name set value '{"text": "リヒトゾンビ"}'

## タイプ
    data modify storage asset:mob type set value "enemy"

## 装備
    data modify storage asset:mob armor set value [{ID:54016},{},{},{}]
    #data modify storage asset:mob weapon set value [{},{}]

## ステータス
    data modify storage asset:mob status.lvl set value 1
    data modify storage asset:mob status.exp set value 5
    data modify storage asset:mob status.money set value 10
    data modify storage asset:mob status.hp set value 200
    data modify storage asset:mob status.mp set value 0
    data modify storage asset:mob status.atk set value 10
    data modify storage asset:mob status.def set value 1
    data modify storage asset:mob status.speed set value 230

## ドロップ品
    data modify storage asset:mob loot set value [\
    {item:{ID:54002},chance:0.01},\
    {item:{ID:54003},chance:0.005},\
    {item:{ID:54004},chance:0.001},\
    {item:{ID:54016},chance:0.005},\
    {item:{ID:54017},chance:0.005},\
    {item:{ID:54018},chance:0.005},\
    {item:{ID:54019},chance:0.005},\
    {item:{ID:54020},chance:0.001},\
    {item:{ID:54021},chance:0.001},\
    {item:{ID:54022},chance:0.001},\
    {item:{ID:54023},chance:0.001},\
    {item:{ID:54501},chance:0.1},\
    {item:{ID:54508},chance:0.1},\
    {item:{ID:54511},chance:0.05}\
    ]

## NBT
#data modify storage asset:mob NBT set value {}
