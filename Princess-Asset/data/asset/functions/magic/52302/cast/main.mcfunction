#> asset:magic/52302/cast/main
# 
# @within function asset:magic/52302/cast/check.condition

## 魔法名; JsonText
  data modify storage asset:magic Name set value '{"text":"ブラスト","color":"red"}'
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
    data modify storage asset:magic Element set value "Wasser"
  ### 範囲; Float; (任意)
    data modify storage asset:magic Range set value 5.0f
## 初期化
  function asset.lib:magic/cast/check.condition
## 保存
  function data.player:please
  data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].data set from storage asset:magic {}
  data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].Activating set value 1b
