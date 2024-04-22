#> lib:hitbox/
# 
# @public
# @input storage lib: id
# @output storage lib: HitBox

## 
  ### Enemy
    execute if data storage lib: {id:"blaze"} run data modify storage lib: HitBox set value [0.3f,0.9f]
    execute if data storage lib: {id:"cave_spider"} run data modify storage lib: HitBox set value [0.35f,0.25f]
    execute if data storage lib: {id:"creeper"} run data modify storage lib: HitBox set value [0.3f,0.85f]
    execute if data storage lib: {id:"elder_guardian"} run data modify storage lib: HitBox set value [0.99875f,0.99875f]
    execute if data storage lib: {id:"ender_dragon"} run data modify storage lib: HitBox set value [8.0f,4.0f]
    execute if data storage lib: {id:"enderman"} run data modify storage lib: HitBox set value [0.3f,1.45f]
    execute if data storage lib: {id:"ghast"} run data modify storage lib: HitBox set value [2.0f,2.0f]
    execute if data storage lib: {id:"giant"} run data modify storage lib: HitBox set value [1.8f,6.0f]
    execute if data storage lib: {id:"guardian"} run data modify storage lib: HitBox set value [0.85f,0.85f]
    execute if data storage lib: {id:"phantom"} run function lib:hitbox/phantom
    execute if data storage lib: {id:"player"} run data modify storage lib: HitBox set value [0.3f,0.9f]
    execute if data storage lib: {id:"ravager"} run data modify storage lib: HitBox set value [0.975f,1.15f]
    execute if data storage lib: {id:"shulker"} run data modify storage lib: HitBox set value [0.5f,0.5f]
    execute if data storage lib: {id:"spider"} run data modify storage lib: HitBox set value [0.7f,0.45f]
    execute if data storage lib: {id:"vex"} run data modify storage lib: HitBox set value [0.2f,0.4f]
    execute if data storage lib: {id:"warden"} run data modify storage lib: HitBox set value [0.4f,1.45f]
    execute if data storage lib: {id:"wither"} run data modify storage lib: HitBox set value [8f,4f]
    execute if data storage lib: {id:"wither_skeleton"} run data modify storage lib: HitBox set value [0.35f,1.2f]
  ### Neutral
    execute if data storage lib: {id:"allay"} run data modify storage lib: HitBox set value [0.3f,0.3f]
    execute if data storage lib: {id:"axolotl"} run data modify storage lib: HitBox set value [0.375f,0.21f]
    execute if data storage lib: {id:"camel"} run data modify storage lib: HitBox set value [0.85f,1.1875f]
    execute if data storage lib: {id:"chicken"} run data modify storage lib: HitBox set value [0.2f,0.35f]
    execute if data storage lib: {id:"cod"} run data modify storage lib: HitBox set value [0.25f,0.15f]
    execute if data storage lib: {id:"dolphin"} run data modify storage lib: HitBox set value [0.45f,0.3f]
    execute if data storage lib: {id:"frog"} run data modify storage lib: HitBox set value [0.25f,0.275f]
    execute if data storage lib: {id:"iron_golem"} run data modify storage lib: HitBox set value [0.7f,1.35f]
    execute if data storage lib: {id:"panda"} run data modify storage lib: HitBox set value [0.65f,0.625f]
    execute if data storage lib: {id:"pig"} run data modify storage lib: HitBox set value [0.45f,0.45f]
    execute if data storage lib: {id:"polar_bear"} run data modify storage lib: HitBox set value [0.7f,0.7f]
    execute if data storage lib: {id:"pufferfish"} run function lib:hitbox/pufferfish
    execute if data storage lib: {id:"rabbit"} run data modify storage lib: HitBox set value [0.2f,0.25f]
    execute if data storage lib: {id:"salmon"} run data modify storage lib: HitBox set value [0.35f,0.2f]
    execute if data storage lib: {id:"sniffer"} run data modify storage lib: HitBox set value [0.855f,0.7875f]
    execute if data storage lib: {id:"snow_golem"} run data modify storage lib: HitBox set value [0.35f,0.95f]
    execute if data storage lib: {id:"strider"} run data modify storage lib: HitBox set value [0.45f,0.85f]
    execute if data storage lib: {id:"tadpole"} run data modify storage lib: HitBox set value [0.3f,0.4f]
    execute if data storage lib: {id:"tropical_fish"} run data modify storage lib: HitBox set value [0.25f,0.2f]
    execute if data storage lib: {id:"turtle"} run function lib:hitbox/turtle
    execute if data storage lib: {id:"wolf"} run data modify storage lib: HitBox set value [0.3f,0.425f]
  ### Tags
    execute if data storage lib: {id:"#babies"} run data modify storage lib: HitBox set value [0.35f,0.3f]
    execute if data storage lib: {id:"#cats"} run data modify storage lib: HitBox set value [0.3f,0.35f]
    execute if data storage lib: {id:"#cows"} run data modify storage lib: HitBox set value [0.45f,0.7f]
    execute if data storage lib: {id:"#flyings"} run data modify storage lib: HitBox set value [0.25f,0.45f]
    execute if data storage lib: {id:"#hoglins"} run data modify storage lib: HitBox set value [0.6982f,0.7f]
    execute if data storage lib: {id:"#horses"} run data modify storage lib: HitBox set value [0.6982f,0.8f]
    execute if data storage lib: {id:"#humanoid"} run data modify storage lib: HitBox set value [0.3f,0.975f]
    execute if data storage lib: {id:"#llamas"} run data modify storage lib: HitBox set value [0.45f,0.935f]
    execute if data storage lib: {id:"#mites"} run data modify storage lib: HitBox set value [0.2f,0.15f]
    execute if data storage lib: {id:"#mofumofu"} run data modify storage lib: HitBox set value [0.45f,0.65f]
    execute if data storage lib: {id:"#skeletons"} run data modify storage lib: HitBox set value [0.3f,0.995f]
    execute if data storage lib: {id:"#slimes"} run function lib:hitbox/slime/
    execute if data storage lib: {id:"#squids"} run data modify storage lib: HitBox set value [0.4f,0.4f]
## 子供だったら
  execute if entity @s[type=!turtle,predicate=lib:hitbox/is_baby] store result storage lib: HitBox[0] float 0.5 run data get storage lib: HitBox[0]
  execute if entity @s[type=!turtle,predicate=lib:hitbox/is_baby] store result storage lib: HitBox[1] float 0.5 run data get storage lib: HitBox[1]
## MOBが登録されていなかったら
  execute unless data storage lib: HitBox run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "HitBoxが登録されていないMOBがいます。"}]
