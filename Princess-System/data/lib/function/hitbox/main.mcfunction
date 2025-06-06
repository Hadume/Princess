#> lib:hitbox/main
# MOBのヒットボックスのサイズを取得
# @within function lib:hitbox/

##
    ### Enemy
        execute if data storage lib: {Hitbox:{id:"blaze"}} run data modify storage lib: Hitbox.Size set value [0.6f,1.8f]
        execute if data storage lib: {Hitbox:{id:"cave_spider"}} run data modify storage lib: Hitbox.Size set value [0.7f,0.5f]
        execute if data storage lib: {Hitbox:{id:"creeper"}} run data modify storage lib: Hitbox.Size set value [0.6f,1.7f]
        execute if data storage lib: {Hitbox:{id:"elder_guardian"}} run data modify storage lib: Hitbox.Size set value [1.9975f,1.9975f]
        execute if data storage lib: {Hitbox:{id:"ender_dragon"}} run data modify storage lib: Hitbox.Size set value [16.0f,8.0f]
        execute if data storage lib: {Hitbox:{id:"enderman"}} run data modify storage lib: Hitbox.Size set value [0.6f,2.9f]
        execute if data storage lib: {Hitbox:{id:"ghast"}} run data modify storage lib: Hitbox.Size set value [4.0f,4.0f]
        execute if data storage lib: {Hitbox:{id:"giant"}} run data modify storage lib: Hitbox.Size set value [3.6f,12.0f]
        execute if data storage lib: {Hitbox:{id:"guardian"}} run data modify storage lib: Hitbox.Size set value [1.7f,1.7f]
        execute if data storage lib: {Hitbox:{id:"phantom"}} run function lib:hitbox/entity/phantom
        execute if data storage lib: {Hitbox:{id:"player"}} run data modify storage lib: Hitbox.Size set value [0.6f,1.8f]
        execute if data storage lib: {Hitbox:{id:"ravager"}} run data modify storage lib: Hitbox.Size set value [1.95f,2.3f]
        execute if data storage lib: {Hitbox:{id:"shulker"}} run data modify storage lib: Hitbox.Size set value [1.0f,1.0f]
        execute if data storage lib: {Hitbox:{id:"spider"}} run data modify storage lib: Hitbox.Size set value [1.4f,0.9f]
        execute if data storage lib: {Hitbox:{id:"vex"}} run data modify storage lib: Hitbox.Size set value [0.4f,0.8f]
        execute if data storage lib: {Hitbox:{id:"warden"}} run data modify storage lib: Hitbox.Size set value [0.8f,2.9f]
        execute if data storage lib: {Hitbox:{id:"wither"}} run data modify storage lib: Hitbox.Size set value [0.9f,3.5f]
        execute if data storage lib: {Hitbox:{id:"wither_skeleton"}} run data modify storage lib: Hitbox.Size set value [0.7f,2.4f]

    ### Neutral
        execute if data storage lib: {Hitbox:{id:"allay"}} run data modify storage lib: Hitbox.Size set value [0.6f,0.6f]
        execute if data storage lib: {Hitbox:{id:"axolotl"}} run data modify storage lib: Hitbox.Size set value [0.75f,0.42f]
        execute if data storage lib: {Hitbox:{id:"camel"}} run data modify storage lib: Hitbox.Size set value [1.7f,2.375f]
        execute if data storage lib: {Hitbox:{id:"chicken"}} run data modify storage lib: Hitbox.Size set value [0.4f,0.7f]
        execute if data storage lib: {Hitbox:{id:"cod"}} run data modify storage lib: Hitbox.Size set value [0.5f,0.3f]
        execute if data storage lib: {Hitbox:{id:"dolphin"}} run data modify storage lib: Hitbox.Size set value [0.9f,0.6f]
        execute if data storage lib: {Hitbox:{id:"frog"}} run data modify storage lib: Hitbox.Size set value [0.5f,0.55f]
        execute if data storage lib: {Hitbox:{id:"iron_golem"}} run data modify storage lib: Hitbox.Size set value [1.4f,2.7f]
        execute if data storage lib: {Hitbox:{id:"panda"}} run data modify storage lib: Hitbox.Size set value [1.3f,1.25f]
        execute if data storage lib: {Hitbox:{id:"pig"}} run data modify storage lib: Hitbox.Size set value [0.9f,0.9f]
        execute if data storage lib: {Hitbox:{id:"polar_bear"}} run data modify storage lib: Hitbox.Size set value [1.4f,1.4f]
        execute if data storage lib: {Hitbox:{id:"pufferfish"}} run function lib:hitbox/entity/pufferfish
        execute if data storage lib: {Hitbox:{id:"rabbit"}} run data modify storage lib: Hitbox.Size set value [0.4f,0.5f]
        execute if data storage lib: {Hitbox:{id:"salmon"}} run data modify storage lib: Hitbox.Size set value [0.7f,0.4f]
        execute if data storage lib: {Hitbox:{id:"sniffer"}} run function lib:hitbox/entity/sniffer
        execute if data storage lib: {Hitbox:{id:"snow_golem"}} run data modify storage lib: Hitbox.Size set value [0.7f,1.9f]
        execute if data storage lib: {Hitbox:{id:"strider"}} run data modify storage lib: Hitbox.Size set value [0.9f,1.7f]
        execute if data storage lib: {Hitbox:{id:"tadpole"}} run data modify storage lib: Hitbox.Size set value [0.6f,0.8f]
        execute if data storage lib: {Hitbox:{id:"tropical_fish"}} run data modify storage lib: Hitbox.Size set value [0.5f,0.4f]
        execute if data storage lib: {Hitbox:{id:"turtle"}} run function lib:hitbox/entity/turtle
        execute if data storage lib: {Hitbox:{id:"wolf"}} run data modify storage lib: Hitbox.Size set value [0.6f,0.85f]

    ### Tags
        execute if data storage lib: {Hitbox:{id:"#babies"}} run data modify storage lib: Hitbox.Size set value [0.7f,0.6f]
        execute if data storage lib: {Hitbox:{id:"#cats"}} run data modify storage lib: Hitbox.Size set value [0.6f,0.7f]
        execute if data storage lib: {Hitbox:{id:"#cows"}} run data modify storage lib: Hitbox.Size set value [0.9f,1.4f]
        execute if data storage lib: {Hitbox:{id:"#flyings"}} run data modify storage lib: Hitbox.Size set value [0.5f,0.9f]
        execute if data storage lib: {Hitbox:{id:"#hoglins"}} run data modify storage lib: Hitbox.Size set value [1.3965f,1.4f]
        execute if data storage lib: {Hitbox:{id:"#horses"}} run data modify storage lib: Hitbox.Size set value [1.3965f,1.6f]
        execute if data storage lib: {Hitbox:{id:"#humanoid"}} run data modify storage lib: Hitbox.Size set value [0.6f,1.95f]
        execute if data storage lib: {Hitbox:{id:"#llamas"}} run data modify storage lib: Hitbox.Size set value [0.9f,1.87f]
        execute if data storage lib: {Hitbox:{id:"#mites"}} run data modify storage lib: Hitbox.Size set value [0.4f,0.3f]
        execute if data storage lib: {Hitbox:{id:"#mofumofu"}} run data modify storage lib: Hitbox.Size set value [0.9f,1.3f]
        execute if data storage lib: {Hitbox:{id:"#skeletons"}} run data modify storage lib: Hitbox.Size set value [0.6f,1.99f]
        execute if data storage lib: {Hitbox:{id:"#slimes"}} run function lib:hitbox/entity/slime/
        execute if data storage lib: {Hitbox:{id:"#squids"}} run data modify storage lib: Hitbox.Size set value [0.8f,0.8f]


## 子供だったら、サイズを半分に
    execute if entity @s[type=!turtle,predicate=lib:hitbox/is_baby] store result storage lib: HitBox[0] float 0.5 run data get storage lib: HitBox[0]
    execute if entity @s[type=!turtle,predicate=lib:hitbox/is_baby] store result storage lib: HitBox[1] float 0.5 run data get storage lib: HitBox[1]

## MOBが登録されていなかったら
    execute unless data storage lib: Hitbox.Size run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},"HitBoxが登録されていないMOBがいます。"]
