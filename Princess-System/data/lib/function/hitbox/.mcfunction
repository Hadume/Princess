#> lib:hitbox/
#
# @within tag/function lib:hitbox

## 引数が足りなかったら
    execute unless data storage lib:hitbox input run return run function lib:_common {function:"lib:hitbox ",argument:"input"}

##a
    ### enemy
        execute if data storage lib:hitbox {input:"blaze"} run data modify storage lib:hitbox output set value [0.6f,1.8f]
        execute if data storage lib:hitbox {input:"cave_spider"} run data modify storage lib:hitbox output set value [0.7f,0.5f]
        execute if data storage lib:hitbox {input:"creeper"} run data modify storage lib:hitbox output set value [0.6f,1.7f]
        execute if data storage lib:hitbox {input:"elder_guardian"} run data modify storage lib:hitbox output set value [1.9975f,1.9975f]
        execute if data storage lib:hitbox {input:"ender_dragon"} run data modify storage lib:hitbox output set value [16.0f,8.0f]
        execute if data storage lib:hitbox {input:"enderman"} run data modify storage lib:hitbox output set value [0.6f,2.9f]
        execute if data storage lib:hitbox {input:"ghast"} run data modify storage lib:hitbox output set value [4.0f,4.0f]
        execute if data storage lib:hitbox {input:"giant"} run data modify storage lib:hitbox output set value [3.6f,12.0f]
        execute if data storage lib:hitbox {input:"guardian"} run data modify storage lib:hitbox output set value [1.7f,1.7f]
        execute if data storage lib:hitbox {input:"phantom"} run function lib:hitbox/entity/phantom
        execute if data storage lib:hitbox {input:"player"} run data modify storage lib:hitbox output set value [0.6f,1.8f]
        execute if data storage lib:hitbox {input:"ravager"} run data modify storage lib:hitbox output set value [1.95f,2.3f]
        execute if data storage lib:hitbox {input:"shulker"} run data modify storage lib:hitbox output set value [1.0f,1.0f]
        execute if data storage lib:hitbox {input:"spider"} run data modify storage lib:hitbox output set value [1.4f,0.9f]
        execute if data storage lib:hitbox {input:"vex"} run data modify storage lib:hitbox output set value [0.4f,0.8f]
        execute if data storage lib:hitbox {input:"warden"} run data modify storage lib:hitbox output set value [0.8f,2.9f]
        execute if data storage lib:hitbox {input:"wither"} run data modify storage lib:hitbox output set value [0.9f,3.5f]
        execute if data storage lib:hitbox {input:"wither_skeleton"} run data modify storage lib:hitbox output set value [0.7f,2.4f]

    ### Neutral
        execute if data storage lib:hitbox {input:"allay"} run data modify storage lib:hitbox output set value [0.6f,0.6f]
        execute if data storage lib:hitbox {input:"axolotl"} run data modify storage lib:hitbox output set value [0.75f,0.42f]
        execute if data storage lib:hitbox {input:"camel"} run data modify storage lib:hitbox output set value [1.7f,2.375f]
        execute if data storage lib:hitbox {input:"chicken"} run data modify storage lib:hitbox output set value [0.4f,0.7f]
        execute if data storage lib:hitbox {input:"cod"} run data modify storage lib:hitbox output set value [0.5f,0.3f]
        execute if data storage lib:hitbox {input:"dolphin"} run data modify storage lib:hitbox output set value [0.9f,0.6f]
        execute if data storage lib:hitbox {input:"frog"} run data modify storage lib:hitbox output set value [0.5f,0.55f]
        execute if data storage lib:hitbox {input:"iron_golem"} run data modify storage lib:hitbox output set value [1.4f,2.7f]
        execute if data storage lib:hitbox {input:"panda"} run data modify storage lib:hitbox output set value [1.3f,1.25f]
        execute if data storage lib:hitbox {input:"pig"} run data modify storage lib:hitbox output set value [0.9f,0.9f]
        execute if data storage lib:hitbox {input:"polar_bear"} run data modify storage lib:hitbox output set value [1.4f,1.4f]
        execute if data storage lib:hitbox {input:"pufferfish"} run function lib:hitbox/entity/pufferfish
        execute if data storage lib:hitbox {input:"rabbit"} run data modify storage lib:hitbox output set value [0.4f,0.5f]
        execute if data storage lib:hitbox {input:"salmon"} run data modify storage lib:hitbox output set value [0.7f,0.4f]
        execute if data storage lib:hitbox {input:"sniffer"} run function lib:hitbox/entity/sniffer
        execute if data storage lib:hitbox {input:"snow_golem"} run data modify storage lib:hitbox output set value [0.7f,1.9f]
        execute if data storage lib:hitbox {input:"strider"} run data modify storage lib:hitbox output set value [0.9f,1.7f]
        execute if data storage lib:hitbox {input:"tadpole"} run data modify storage lib:hitbox output set value [0.6f,0.8f]
        execute if data storage lib:hitbox {input:"tropical_fish"} run data modify storage lib:hitbox output set value [0.5f,0.4f]
        execute if data storage lib:hitbox {input:"turtle"} run function lib:hitbox/entity/turtle
        execute if data storage lib:hitbox {input:"wolf"} run data modify storage lib:hitbox output set value [0.6f,0.85f]

    ### Tags
        execute if data storage lib:hitbox {input:"#babies"} run data modify storage lib:hitbox output set value [0.7f,0.6f]
        execute if data storage lib:hitbox {input:"#cats"} run data modify storage lib:hitbox output set value [0.6f,0.7f]
        execute if data storage lib:hitbox {input:"#cows"} run data modify storage lib:hitbox output set value [0.9f,1.4f]
        execute if data storage lib:hitbox {input:"#flyings"} run data modify storage lib:hitbox output set value [0.5f,0.9f]
        execute if data storage lib:hitbox {input:"#hoglins"} run data modify storage lib:hitbox output set value [1.3965f,1.4f]
        execute if data storage lib:hitbox {input:"#horses"} run data modify storage lib:hitbox output set value [1.3965f,1.6f]
        execute if data storage lib:hitbox {input:"#humanoid"} run data modify storage lib:hitbox output set value [0.6f,1.95f]
        execute if data storage lib:hitbox {input:"#llamas"} run data modify storage lib:hitbox output set value [0.9f,1.87f]
        execute if data storage lib:hitbox {input:"#mites"} run data modify storage lib:hitbox output set value [0.4f,0.3f]
        execute if data storage lib:hitbox {input:"#mofumofu"} run data modify storage lib:hitbox output set value [0.9f,1.3f]
        execute if data storage lib:hitbox {input:"#skeletons"} run data modify storage lib:hitbox output set value [0.6f,1.99f]
        execute if data storage lib:hitbox {input:"#slimes"} run function lib:hitbox/entity/slime/
        execute if data storage lib:hitbox {input:"#squids"} run data modify storage lib:hitbox output set value [0.8f,0.8f]


## 子供だったら、サイズを半分に
    execute if entity @s[type=!turtle,predicate=lib:hitbox/is_baby] store result storage lib:hitbox output[0] float 0.5 run data get storage lib:hitbox output[0]
    execute if entity @s[type=!turtle,predicate=lib:hitbox/is_baby] store result storage lib:hitbox output[1] float 0.5 run data get storage lib:hitbox output[1]

## MOBが登録されていなかったら
    execute unless data storage lib:hitbox output run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},"HitBoxが登録されていないMOBがいます。"]

## ライブラリ共通処理
    function lib:_common {function:"lib:hitbox ",argument:"null"}
