#> asset.lib:magic/action/range/spell/damage
# ついでに、攻撃
# @within function asset.lib:magic/action/range/spell/

## データをコピー
  data modify storage asset:magic Amount set from storage asset:temp Magic.Amount
  execute if data storage asset:temp Magic.CasterID run data modify storage asset:magic CasterID set from storage asset:temp Magic.CasterID
  execute if data storage asset:temp Magic.Elements run data modify storage asset:magic Elements set from storage asset:temp Magic.Elements
