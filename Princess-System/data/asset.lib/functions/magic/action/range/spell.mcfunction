#> asset.lib:magic/action/range/spell
# 範囲内のMOBの特定。魔法での準備編
# @within function asset:magic/*/*/main

#> ScoreHolder
# @private
 #declare score_holder #Pierce.Copy

## 魔法情報を取得
  function data.entity:please
  data modify storage asset:temp Magic set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic
## データをコピー
  data modify storage asset:magic Range set from storage asset:temp Magic.Range
  execute if data storage asset:temp Magic.Pierce run data modify storage asset:magic Pierce set from storage asset:temp Magic.Pierce
  execute if data storage asset:temp Magic.Targets run data modify storage asset:magic Targets set from storage asset:temp Magic.Targets
  execute if data storage asset:magic Damage run data modify storage asset:magic Amount set from storage asset:temp Magic.Amount
  execute if data storage asset:magic Damage if data storage asset:temp Magic.CasterID run data modify storage asset:magic CasterID set from storage asset:temp Magic.CasterID
  execute if data storage asset:magic Damage if data storage asset:temp Magic.Elements run data modify storage asset:magic Elements set from storage asset:temp Magic.Elements
## 範囲内のMOBを特定
  function asset.lib:magic/action/range/
## 貫通数を保存
  execute store result score #Pierce.Copy Temp run data get storage lib: Range.Pierced
  execute if score #Pierce.Copy Temp matches ..0 run function asset.lib:magic/extinguish
  execute if score #Pierce.Copy Temp matches 1.. run function data.entity:please
  execute if score #Pierce.Copy Temp matches 1.. run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Pierce set from storage lib: Range.Pierce
## 一時使用ScoreHolderをリセット
  scoreboard players reset #Pierce.Copy
## 一時使用Storageを削除
  data remove storage asset:temp Magic
