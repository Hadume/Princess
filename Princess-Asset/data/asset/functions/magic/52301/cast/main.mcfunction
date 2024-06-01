#> asset:magic/52301/cast/main
# 
# @within function asset:magic/52301/cast/check.mp

## 魔法名; JsonText
  data modify storage asset:magic Name set value '{"text":"アトラクト","color":"red"}'
## 音を鳴らす
  execute at @s run playsound entity.generic.splash master @s ~ ~ ~ 0.5 1
  execute at @s run playsound block.bubble_column.upwards_ambient master @s ~ ~ ~ 0.5 2
## タイプを設定
  ### クールタイム; Int
    data modify storage asset:magic CoolTime set value 40
  ### 対象; List.String; ["Enemy", "Player"]
    data modify storage asset:magic Target set value ["Enemy"]
  ### 発射数; Int
    execute unless score #Magic.Multiple Asset = #Magic.Multiple Asset run scoreboard players set #Magic.Multiple Asset 1
  ### 貫通数; Int (任意)
    data modify storage asset:magic Pierce set value 1
  ### 属性; String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Element set value "Wind"
  ### 範囲; Float; (任意)
    data modify storage asset:magic Range set value 5.0f
## 初期化
  function asset.lib:magic/cast/check.condition
## 引き寄せる
  function api:get.nbt/pos/
  data modify storage lib: Spread.At set from storage api: Pos
  data modify storage lib: Spread.Amount set value [1.0f,0.0f]
  data modify storage lib: Spread.OnGround set value 1b
  execute at @s as @e[tag=Lib.InRange] run function lib:spread/
