#> asset.lib:magic/type/
# 魔法発動に必要な要素を確認
# @within tag/function asset.lib:magic/type

## タイプを呼び出す
    function #asset:magic/type

## タイプが足りなかったら
    execute unless data storage asset:magic name run return run function asset.lib:magic/type/argument {argument:"name"}
    execute unless data storage asset:magic mp run return run function asset.lib:magic/type/argument {argument:"mp"}
    execute unless data storage asset:magic cooltime run return run function asset.lib:magic/type/argument {argument:"cooltime"}

## タイプの各数値を調整
    function asset.lib:magic/type/modify_type_value/mp
    function asset.lib:magic/type/modify_type_value/amount
    function asset.lib:magic/type/modify_type_value/cooltime
    function asset.lib:magic/type/modify_type_value/range
    execute if data storage asset:magic multiple run function asset.lib:magic/type/modify_type_value/multiple
    execute if data storage asset:magic pierce run function asset.lib:magic/type/modify_type_value/pierce
    execute if data storage asset:magic duration run function asset.lib:magic/type/modify_type_value/duration
    execute if data storage asset:magic spread run function asset.lib:magic/type/modify_type_value/spread
    execute if data storage asset:magic speed run function asset.lib:magic/type/modify_type_value/speed

## 引数を削除
    function asset.lib:magic/type/argument {argument:"null"}

## 一時使用scoreHolderをリセット
    scoreboard players reset #value temp
