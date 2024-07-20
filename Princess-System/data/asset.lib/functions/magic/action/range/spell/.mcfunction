#> asset.lib:magic/action/range/spell/
# 範囲内のMOBの特定。魔法での準備編
# @within function asset:magic/*/*/main

## 魔法情報を取得
  function data.entity:please
  data modify storage asset:temp Magic set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic
## データをコピー
  data modify storage asset:magic Range set from storage asset:temp Magic.Range
  execute if data storage asset:temp Magic.Pierce run data modify storage asset:magic Pierce set from storage asset:temp Magic.Pierce
  execute if data storage asset:temp Magic.Targets run data modify storage asset:magic Targets set from storage asset:temp Magic.Targets
## ついでに攻撃するなら
  execute if data storage asset:magic Damage run function asset.lib:magic/action/range/spell/damage
## 範囲内のMOBを特定
  function asset.lib:magic/action/range/
## 貫通数を保存
  execute if data storage lib: {Range:{Pierced:0}} run function asset.lib:magic/extinguish
  execute unless data storage lib: {Range:{Pierced:0}} run function data.entity:please
  execute unless data storage lib: {Range:{Pierced:0}} run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Pierce set from storage lib: Range.Pierced
## 一時使用Storageを削除
  data remove storage asset:temp Magic
