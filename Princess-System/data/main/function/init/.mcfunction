#> main:init/
# 初期化
# @within function main:load

## 初期化完了
#data modify storage main: init set value 1b

#> Scoreboard.Public
# @public
    scoreboard objectives add global dummy
    scoreboard objectives add const dummy
    scoreboard objectives add temp dummy
    scoreboard objectives add lib dummy
    ### Used
        scoreboard objectives add usedWFOAS used:warped_fungus_on_a_stick

    ### Custom
        scoreboard objectives add leaveGame custom:leave_game

    ### Status
        scoreboard objectives add lvl dummy
        scoreboard objectives add money dummy
        #### exp
            scoreboard objectives add exp dummy
            scoreboard objectives add expNeed dummy

        #### hp
            scoreboard objectives add hp dummy
            scoreboard objectives add hpMax dummy
            scoreboard objectives add hpMaxBase dummy
            scoreboard objectives add hpRgnIntrvl dummy
            scoreboard objectives add hpRgnIntrvlBase dummy
            scoreboard objectives add hpRgnPer dummy
            scoreboard objectives add hpRgnPerBase dummy
            scoreboard objectives add hpRgnTimer dummy

        #### mp
            scoreboard objectives add mp dummy
            scoreboard objectives add mpMax dummy
            scoreboard objectives add mpMaxBase dummy
            scoreboard objectives add mpRgnIntrvl dummy
            scoreboard objectives add mpRgnIntrvlBase dummy
            scoreboard objectives add mpRgnPer dummy
            scoreboard objectives add mpRgnPerBase dummy
            scoreboard objectives add mpRgnTimer dummy

        #### atk
            scoreboard objectives add atk dummy
            scoreboard objectives add atkBase dummy
            scoreboard objectives add atkFlamme dummy
            scoreboard objectives add atkFlammeBase dummy
            scoreboard objectives add atkWasser dummy
            scoreboard objectives add atkWasserBase dummy
            scoreboard objectives add atkWind dummy
            scoreboard objectives add atkWindBase dummy
            scoreboard objectives add atkLicht dummy
            scoreboard objectives add atkLichtBase dummy
            scoreboard objectives add atkDunkel dummy
            scoreboard objectives add atkDunkelBase dummy

        #### def
            scoreboard objectives add def dummy
            scoreboard objectives add defBase dummy
            scoreboard objectives add defFlamme dummy
            scoreboard objectives add defFlammeBase dummy
            scoreboard objectives add defWasser dummy
            scoreboard objectives add defWasserBase dummy
            scoreboard objectives add defWind dummy
            scoreboard objectives add defWindBase dummy
            scoreboard objectives add defLicht dummy
            scoreboard objectives add defLichtBase dummy
            scoreboard objectives add defDunkel dummy
            scoreboard objectives add defDunkelBase dummy

        #### speed
            scoreboard objectives add speed dummy
            scoreboard objectives add speedBase dummy


    ### Magic
        scoreboard objectives add duration dummy
        scoreboard objectives add ctClick dummy
        scoreboard objectives add ctClickS dummy
        scoreboard objectives add ctOffhand dummy
        scoreboard objectives add ctOffhandS dummy
        #### Types
            ##### mp
                scoreboard objectives add mgcMp dummy
                scoreboard objectives add mgcMpBase dummy

            ##### Cooltime
                scoreboard objectives add mgcCooltime dummy
                scoreboard objectives add mgcCooltimeBase dummy

            ##### multiple
                scoreboard objectives add mgcMultiple dummy
                scoreboard objectives add mgcMultipleBase dummy

            ##### amount
                scoreboard objectives add mgcAmount dummy
                scoreboard objectives add mgcAmountBase dummy

            ##### duration
                scoreboard objectives add mgcDuration dummy
                scoreboard objectives add mgcDurationBase dummy

            ##### Pierce
                scoreboard objectives add mgcPierce dummy
                scoreboard objectives add mgcPierceBase dummy

            ##### spread
                scoreboard objectives add mgcSpread dummy
                scoreboard objectives add mgcSpreadBase dummy

            ##### range
                scoreboard objectives add mgcRange dummy
                scoreboard objectives add mgcRangeBase dummy

            ##### speed
                scoreboard objectives add mgcSpeed dummy
                scoreboard objectives add mgcSpeedBase dummy



    ### Misc
        scoreboard objectives add fourTickInterval dummy


#> scoreHolder
# @public
    scoreboard players set #-1 const -1
    scoreboard players set #2 const 2
    scoreboard players set #4 const 4
    scoreboard players set #10 const 10
    scoreboard players set #21 const 21
    scoreboard players set #51 const 51
    scoreboard players set #100 const 100
    scoreboard players set #200 const 200
    scoreboard players set #1000 const 1000
    scoreboard players set #1600 const 1600
    scoreboard players set #10000 const 10000
    scoreboard players set #18000 const 18000
    scoreboard players set #2^2 const 4
    scoreboard players set #2^15 const 32768
    scoreboard players set #2^16 const 65536
    scoreboard players set #2^18 const 262144
    scoreboard players set #2^24 const 16777216
    data modify storage main: const.SQRT2 set value 1.41421356237d
    data modify storage main: const.PI set value 3.14159265359d

## ゲームルール
    function main:init/gamerule

#> 汎用ArmorStand
# @public
#alias entity AS 0-0-1-0-0
    execute in overworld run summon armor_stand 0 -64 0 {UUID:[I; 0, 1, 0, 0],Marker:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b}

#> 汎用ShulkerBox
# @public
#alias vector ShulkerBox 0 -64 0
    execute in overworld run forceload add 0 0 0 0
    execute in overworld run setblock 0 -64 0 shulker_box

## エラーログ
    data modify storage main: tell.ERROR set value "§c[Error] §o§n"
    data modify storage main: tell.ARGUMENT_ERROR set value "§c[Error] 引数が足りません: §o§n"

## 各システムの初期化
    function api:init
    function asset.lib:init
    function lib:init
    function menu:init

## Assetの初期化
    function #asset:magic/load
