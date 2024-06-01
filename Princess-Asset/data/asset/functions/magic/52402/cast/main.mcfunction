#> asset:magic/52402/cast/main
# 
# @within function asset:magic/52402/cast/check.mp

## 魔法名; JsonText
  data modify storage asset:magic Name set value '{"text":"ルシフェル","color":"red"}'
## 音を鳴らす
  #execute at @s run playsound entity.generic.splash master @s ~ ~ ~ 0.5 1
  #execute at @s run playsound block.bubble_column.upwards_ambient master @s ~ ~ ~ 0.5 2
## タイプを設定
  ### 
    data modify storage asset:magic Amount set value 10
  ### クールタイム; Int
    data modify storage asset:magic CoolTime set value 40
  ### 対象; List.String; ["Enemy", "Player"]
    data modify storage asset:magic Target set value ["Player"]
  ### 発射数; Int
    execute unless score #Magic.Multiple Asset = #Magic.Multiple Asset run scoreboard players set #Magic.Multiple Asset 1
  ### 属性; String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Element set value "Licht"
  ### 範囲; Float; (任意)
    data modify storage asset:magic Range set value 5.0f
## 初期化
  function asset.lib:magic/cast/check.condition
## 
  execute store result score #HP.Rcvr Temp run data get storage asset:magic Amount
  execute as @e[tag=Lib.InRange] run scoreboard players operation @s HP += #HP.Rcvr Temp
  execute as @e[tag=Lib.InRange] run function lib:status/hp/update/
