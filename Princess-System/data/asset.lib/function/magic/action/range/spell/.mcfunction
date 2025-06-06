#> asset.lib:magic/action/range/spell/
# 範囲内のMOBの特定。魔法での準備編
# @within tag/function asset.lib:magic/action/range/spell

## 魔法情報を取得
    function #api:e_dat/please
    data modify storage temp: Magic set from storage dat: _.Magic

## データをコピー
    data modify storage asset:magic Range set from storage temp: Magic.Range
    execute if data storage temp: Magic.Pierce run data modify storage asset:magic Pierce set from storage temp: Magic.Pierce
    execute if data storage temp: Magic.Targets run data modify storage asset:magic Targets set from storage temp: Magic.Targets

## ついでに攻撃するなら
    execute if data storage asset:magic Damage run function asset.lib:magic/action/range/spell/damage

## 範囲内のMOBを特定
    function asset.lib:magic/action/range/

## 貫通数を保存
    execute if data storage lib: {Range:{Pierced:0}} run function asset.lib:magic/extinguish
    execute unless data storage lib: {Range:{Pierced:0}} run function #api:e_dat/please
    execute unless data storage lib: {Range:{Pierced:0}} run data modify storage dat: _.Magic.Pierce set from storage lib: Range.Pierced

## 一時使用Storageを削除
    data remove storage temp: Magic
