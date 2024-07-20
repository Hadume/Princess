#> asset:magic/52302/cast/check.condition
#
# @within function asset:magic/52302/cast/

## データをコピー
  data modify storage asset:temp Activating set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}].Activating
## 発動を解除
  execute if data storage asset:temp {Activating:1b} run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].Magic[{ID:52302}] set value {ID:52302}
  execute if data storage asset:temp {Activating:1b} at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 2
## タイプを設定
  ### 魔法名; JsonText
    data modify storage asset:magic Raw.Name set value '{"text":"ブラスト","color":"red"}'
  ### 消費魔力; Int
    data modify storage asset:magic Raw.MP set value 0
  ### クールタイム; Int
    data modify storage asset:magic Raw.Cooltime set value 20
  ### 範囲; Float; (任意)
    data modify storage asset:magic Raw.Range set value 5.0f
  ### 対象; List.String; ["Enemy", "Player"]; (任意)
    data modify storage asset:magic Raw.Targets set value ["Enemy"]
  ### 属性; List.String; ["Flamme", "Wasser", "Wind", "Licht", "Dunkel"]; (任意)
    data modify storage asset:magic Raw.Elements set value ["Wind"]
## 引数があるか確認
  function asset.lib:magic/cast/check.condition/
##
  execute if data storage asset:magic {CanCast:1b} unless data storage asset:temp Activating run function asset:magic/52302/cast/main
## 一時使用Storageを削除
  data remove storage asset:temp Activating
