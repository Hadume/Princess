#> asset.lib:magic/cast/init/spell
# 魔法で初期化
# @within function asset.lib:magic/cast/init/

## IDを保存
  execute store result score @s AssetID run data get storage asset: Magic.ID
## スコアを代入
  execute if data storage asset: Magic.Duration store result score @s Mgc.Duration run data get storage asset: Magic.Duration
## 速度を代入
  execute if data storage asset: Magic.Speed run function asset.lib:magic/cast/init/speed
## データを保存
  function data.entity:please
  data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].Magic set from storage asset: Magic
## 向きを変更
  execute rotated as @a[tag=This,limit=1] run tp @s ~ ~ ~ ~ ~
## 初期化tagを削除
  tag @s remove Spell.Init
