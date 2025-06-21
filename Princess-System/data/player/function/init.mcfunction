#> player:init
# プレイヤーを初期化
# @within advancement player:init

## 個人ストレージを呼ぶ
    function #api:e_dat/please

## entityType
    data modify storage dat: _.entityType set value "player"

## 装備
    data modify storage dat: _.Armor set value [{},{},{},{}]
    data modify storage dat: _.Weapon set value [{},{}]

## 魔法
    data modify storage dat: _.Magic set value {Known:[]}

## Status
    scoreboard players set @s lvl 1
    ### exp
        execute store result score @s expNeed run scoreboard players set @s exp 10

    ### hp
        execute store result score @s hp run scoreboard players set @s hpMaxBase 100
        scoreboard players set @s hpRgnIntrvlBase 40
        scoreboard players set @s hpRgnPerBase 0

    ### mp
        execute store result score @s mp run scoreboard players set @s mpMaxBase 100
        scoreboard players set @s mpRgnIntrvlBase 40
        scoreboard players set @s mpRgnPerBase 5

    ## atk
        scoreboard players set @s atkBase 1
        scoreboard players set @s atkFlammeBase 0
        scoreboard players set @s atkWasserBase 0
        scoreboard players set @s atkWindBase 0
        scoreboard players set @s atkLichtBase 0
        scoreboard players set @s atkDunkelBase 0

    ## def
        scoreboard players set @s defBase 0
        scoreboard players set @s defFlammeBase 0
        scoreboard players set @s defWasserBase 0
        scoreboard players set @s defWindBase 0
        scoreboard players set @s defLichtBase 0
        scoreboard players set @s defDunkelBase 0

    ### speed
        scoreboard players set @s speedBase 100

    ### Magic
        scoreboard players set @s mgcMpBase 0
        scoreboard players set @s mgcCooltimeBase 0
        scoreboard players set @s mgcmultipleBase 0
        scoreboard players set @s mgcamountBase 0
        scoreboard players set @s mgcDurationBase 0
        scoreboard players set @s mgcPierceBase 0
        scoreboard players set @s mgcspreadBase 0
        scoreboard players set @s mgcrangeBase 0
        scoreboard players set @s mgcSpeedBase 0


## インベントリUI
    function menu:home/root/open

## ステータスの反映
    function #api:display/exp
    ### ステータス
        data modify storage lib: Stats set value ["Physic","Magic","Element"]
        function #lib:stats/update
