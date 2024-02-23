#> player:magic/cast
# 魔法を唱える
# @within function
#   main:score/used.coas
#   main:advancements/inventory_changed

## 個人ストレージを呼ぶ
  function data.player:please
## IDをコピー
  execute if entity @s[scores={Used.COAS=1..},predicate=!player:sneaking] run data modify storage asset: Magic.ID set from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Key.Click
  execute if entity @s[scores={Used.COAS=1..},predicate=player:sneaking] run data modify storage asset: Magic.ID set from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Key.ClickS
  execute if entity @s[advancements={main:inventory_changed=true},predicate=!player:sneaking] run data modify storage asset: Magic.ID set from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Key.Offhand
  execute if entity @s[advancements={main:inventory_changed=true},predicate=player:sneaking] run data modify storage asset: Magic.ID set from storage player: _[-4][-4][-4][-4][-4][-4][-4][-4].Magic.Key.OffhandS
## 魔法を出す
  execute anchored eyes positioned ^ ^ ^ run function #asset:magic/cast
