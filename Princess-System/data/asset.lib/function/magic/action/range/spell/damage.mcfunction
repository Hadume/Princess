#> asset.lib:magic/action/range/spell/damage
# ついでに、攻撃
# @within function asset.lib:magic/action/range/spell/

## データをコピー
    data modify storage asset:magic amount set from storage temp: Magic.amount
    execute if data storage temp: Magic.CasterID run data modify storage asset:magic CasterID set from storage temp: Magic.CasterID
    execute if data storage temp: Magic.Elements run data modify storage asset:magic Elements set from storage temp: Magic.Elements
