#> asset:magic/52102/cast/main
# 
# @within function asset:magic/52102/cast/check.mp

## 拡散範囲; Float; (任意)
  data modify storage asset:magic Spread set value 4.0f
## 本体を召喚
  ### 召喚位置
    data modify storage lib: Spread.Amount set from storage asset:magic Spread
    data modify storage lib: Spread.OnGround set value 1b
    summon marker ~ ~ ~ {Tags:["Spread"]}
    execute as @e[type=marker,tag=Spread] at @s run function lib:spread/
  ### 
    execute as @e[type=marker,tag=Spread] at @s unless block ~ ~-0.001 ~ #main:no_collision run summon armor_stand ~ ~ ~ {FallDistance:-4096f,NoGravity:1b,Invulnerable:1b,Silent:1b,Invisible:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},Small:1b,Tags:["Spell","Spell.Init"]}
    kill @e[type=marker,tag=Spread]
## 魔法名; JsonText
  data modify storage asset:magic Name set value '{"text":"フレア","color":"red"}'
## 音を鳴ら
  execute at @s run playsound block.lava.ambient master @s ~ ~ ~ 0.5 2
  execute at @s run playsound block.fire.ambient master @s ~ ~ ~ 0.25 0.5
## タイプを設定
  ### 効果値; Int
    data modify storage asset:magic Amount set value 10
  ### クールタイム; Int
    data modify storage asset:magic CoolTime set value 40
  ### 対象; List.String; ["Enemy", "Player"]
    data modify storage asset:magic Target set value ["Enemy"]
  ### 発射数; Int
    execute unless score #Magic.Multiple Asset = #Magic.Multiple Asset run scoreboard players set #Magic.Multiple Asset 3
  ### 属性; String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Element set value "Flamme"
  ### 効果範囲; Float; (任意)
    data modify storage asset:magic Range set value 2.0f
  ### 持続時間; Int; (任意)
    data modify storage asset:magic Duration set value 100
## 初期化
  function asset.lib:magic/cast/check.condition
